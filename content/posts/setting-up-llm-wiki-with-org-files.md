+++
title = "Setting up llm-wiki with org files"
author = ["Rajath Ramakrishna"]
date = 2026-07-13T22:14:00-07:00
lastmod = 2026-07-13T22:14:13-07:00
draft = false
+++

I got to know about Andrej Karpathy's [llm-wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) a few months ago. I was intrigued by it, but never got around to using it. The fact that I could capture raw notes on the topic I was researching and the LLM could not only make connections between them, but find topics in my notes and create concept pages was something I saw value in.


## What is llm-wiki? {#what-is-llm-wiki}

llm-wiki is a skill developed by Andrej Karpathy used for building personal knowledge bases using LLMs. The idea is that instead of using LLMs like RAG where you upload documents and ask it to search through them and generate an answer, you make "the LLM incrementally build and maintain a persistent wiki - a structured, interlinked collection of markdown files that sits between you and the raw sources".

Having said this and the fact that LLMs tend to hallucinate every now and then, I didn't want to depend on its summaries completely. I didn't want to add notes on stuff I didn't read about. For example, I didn't want to give it a URL and ask it to summarize, synthesize and create concept pages from that. I only wanted to give notes that I deliberately wrote down.

My workflow for capturing notes involved Emacs and org-roam. I already had 100+ notes in my org-roam and I didn't want disruption to my workflow. But since llm-wiki is just a skill (text instructions) and LLMs understand org-mode like it understands markdown, I wanted to make llm-wiki work with org files. This involved a few steps and I finally got a good working solution that I've been using for a couple of months now.


## Converting the skill to support org-mode and org-roam workflows {#converting-the-skill-to-support-org-mode-and-org-roam-workflows}

The skill seemed heavily dependent on using markdown files as input and working closely with an Obsidian vault. I used neither. I took notes in org-roam and used org files instead of markdown. I wanted to change the skill to be compatible with my workflow, which turned out to be surprisingly simple. I directly asked Claude to convert the original llm-wiki skill to something that supported org files. I proceeded to edit the skill such that it indexes specific org files and org directories where my notes are stored. I was okay with the output being markdown since I was hoping to be able to access it outside of org-roam and Emacs.


## Turning the wiki pages into a website {#turning-the-wiki-pages-into-a-website}

Having a collection of markdown files, especially wiki pages, just on my computer was not adding a lot of value. I could access it only when I'm in front of my laptop. I wanted those pages on the go so that I could read through them on my phone whenever I wanted.

After searching for a few static site generators, I found Quartz fit the use case perfectly. It supports showing markdown files, interlinking between them, showing preview of those links on hover and also showing a graph of all the notes and the connections between them. I set up the static site generator so that the markdown files end up in the `content/` directory. After that, all that was left was commit and push.

With this, I had a seamless setup. All I did was make notes like I did in org-roam. And then run the `/ingest` command which pulled the latest changes, read all the relevant org files, synthesized the files, committed and pushed.


## Detailed Setup Instructions {#detailed-setup-instructions}


### Converting llm-wiki skill to support org files {#converting-llm-wiki-skill-to-support-org-files}

I directly asked Claude to convert the existing llm-wiki skill to support org files. Here's the prompt I used and I attached the [llm-wiki skill file](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f#file-llm-wiki-md):

> Here's the SKILL.md file for llm-wiki skill. It heavily references markdown as the input format. I write my notes in orgmode and I have a bunch of org files. Can you change the SKILL.md file to specify that the input format will be org files and orgmode entries? I want the skill to have placeholder values for a bunch of folders it needs to look at for org files. That's where it will get its input (besides web content). The workflow I'm imagining is me writing org files on my phone which get synced to a folder on my laptop. There'll be a ~/wiki folder which is where all the output would live. The ~/wiki folder could have raw notes (from my org files).


### Adding this to a project {#adding-this-to-a-project}

I checked out [Quartz](https://quartz.jzhao.xyz/) into `~/wiki` on my local.

```markdown
# Personal Knowledge Base

> Schema document — read at the start of every session together with `wiki/index.md`.
> Update after every major compile, ingest batch, or structural change.

## Scope

What this wiki covers:
- Personal notes, reading highlights, and ideas captured in org-roam
- Concepts, entities, and summaries distilled from those notes
- Cross-linked knowledge graph built from daily capture

What this wiki deliberately excludes:
- Raw org files (those stay in the org source dirs below)
- Ephemeral todos or calendar/agenda items

## Org source directories

- ~/org-roam (only use the files in this directory. Don't do a recursive search. There is a folder called journals in the org-roam folder. I dont' want that folder ingested)
- ~/org-mode/thoughts.org
- ~/org-mode/resources.org
- ~/org-mode/blog.org

## Operations

This wiki follows the llm-wiki skill's five operations: `compile`, `ingest`, `query`, `lint`, `audit`.
Every operation appends an entry to `log/YYYYMMDD.md`.
Full operation instructions: `.claude/SKILL.md`

## Naming conventions

- **Concept pages** (`wiki/concepts/`): Title Case noun phrases.
- **Folder-split concepts** (`wiki/concepts/<topic>/`): used when a topic exceeds ~1200 words. Contains `index.md` + one file per aspect.
- **Entity pages** (`wiki/entities/`): Proper names.
- **Summary pages** (`wiki/summaries/`): kebab-case source slug.

All pages require YAML frontmatter: `title`, `type`, `created`, `updated`, `sources`, `tags`.

### Page size
- Target 400–1200 words per page.
- If a topic exceeds ~1200 words, split into a subfolder with `index.md` + one file per aspect.

### Diagrams and formulas
- All diagrams are **mermaid**. No ASCII art.
- All formulas are **KaTeX** (inline `$...$` or block `$$...$$`).

### Raw file policy
- Small text sources → copy into `raw/<subfolder>/`.
- Large binaries → create a pointer file at `raw/refs/<slug>.md` with `kind: ref` and `external_path` fields. Do not copy the binary.
```

All the raw files, the synthesized outputs, the entities, the summaries, everything stays under the content folder in the repo. Quartz being a static site generator produces HTML from the wiki pages.


### Creating custom slash commands {#creating-custom-slash-commands}

I created 5 custom slash commands:


#### Ingest {#ingest}

```markdown
Run the `ingest` operation as defined in `.claude/SKILL.md`.

Before scanning org source directories for org files, verify each directory exists
(test -d). Skip any that don't. If none exist, skip the org-ingest step
entirely for this session — proceed with article/paper/chat-based ingest only.

0. First fetch the latest changes from remote using jj to keep the repo up to date.
1. Read `CLAUDE.md` and `wiki/index.md` first.
2. Scan all org source directories listed in `CLAUDE.md` for `.org` files that are either (a) not yet present in `raw/notes/`, or (b) present but modified since last copied (compare by last-modified date or checksum).
3. For each new or updated file:
   - Copy it into `raw/notes/`, overwriting any existing copy.
   - Summarize its content and extract key concepts and entities.
   - Update or create relevant wiki pages in `wiki/concepts/`, `wiki/entities/`, or `wiki/summaries/`.
4. Update `wiki/index.md` to reflect any new or changed pages.
5. Append a session entry to `log/YYYYMMDD.md` listing what was ingested.
6. Commit all changes and push to remote using jj commands.

If no new or modified org files are found, say so and stop.
If there are many files, offer to ingest in batches of 5 to stay within context window limits.
```


#### Query {#query}

```markdown
Run the `query` operation as defined in `.claude/SKILL.md`.

1. Read `CLAUDE.md` and `wiki/index.md` first.
2. Read the user's question (provided after this command).
3. Search the wiki pages in `wiki/concepts/`, `wiki/entities/`, and `wiki/summaries/` for relevant content.
4. If the answer is found, respond clearly and cite the specific wiki page(s).
5. If the answer is partially found, provide what's known and note the gaps.
6. If the answer is not in the wiki, say so — and offer to ingest new sources or flag it as an open research question.
7. Save the query and answer to `outputs/queries/YYYYMMDD-<slug>.md` for future reference.
```


#### Audit {#audit}

```markdown
Run the `audit` operation as defined in `.claude/SKILL.md`.

1. Read `CLAUDE.md` and `wiki/index.md` first.
2. Scan the `audit/` directory for open feedback files (those not in `audit/resolved/`).
3. For each feedback file:
   - Read the correction or note.
   - Locate the relevant wiki page(s).
   - Apply the correction.
   - Move the feedback file to `audit/resolved/`.
4. If there are contradictions between sources, state both perspectives, cite each source, and add the question to the "Open research questions" section of `CLAUDE.md`.
5. Append a session entry to `log/YYYYMMDD.md` summarising what was audited and resolved.

If no open feedback files are found, say so and stop.
```


#### Lint {#lint}

```markdown
Run the `lint` operation as defined in `.claude/SKILL.md`.

1. Read `CLAUDE.md` and `wiki/index.md` first.
2. Scan all pages in `wiki/` and check for:
   - **Dead links**: internal links that point to pages that don't exist.
   - **Orphan pages**: pages not linked from any other page or from `wiki/index.md`.
   - **Missing frontmatter**: pages lacking required fields (`title`, `type`, `created`, `updated`, `sources`, `tags`).
   - **Oversized pages**: pages exceeding ~1200 words that haven't been split.
   - **Coverage gaps**: concepts or entities mentioned in multiple pages but lacking their own dedicated page.
3. Report all issues grouped by type.
4. For straightforward fixes (missing frontmatter fields, dead links to pages that exist under a different name), fix them directly.
5. Append a session entry to `log/YYYYMMDD.md` listing issues found and actions taken.
```


#### Compile {#compile}

```markdown
Run the `compile` operation as defined in `.claude/SKILL.md`.

1. Read `CLAUDE.md` and `wiki/index.md` first.
2. Review all pages in `wiki/concepts/`, `wiki/entities/`, and `wiki/summaries/`.
3. For each page:
   - Check that frontmatter is complete (`title`, `type`, `created`, `updated`, `sources`, `tags`).
   - Ensure cross-links between related pages are present and accurate.
   - Confirm page length is within 400–1200 words; split into a subfolder if over.
   - Verify all diagrams use Mermaid and all formulas use KaTeX.
4. Update `wiki/index.md` with an accurate list of all current articles.
5. Update the "Current articles" section of `CLAUDE.md`.
6. Append a session entry to `log/YYYYMMDD.md` summarising what was compiled and changed.
```


## My overall workflow {#my-overall-workflow}

1.  Write down notes in org-roam using org-mode.
2.  Once I'm down making changes (creating new files, editing existing files, etc), I run the `/ingest` command in claude code
3.  Per the instructions in the `/ingest` slash command, claude first fetches the latest from github, runs the ingest workflow and then commits and pushes the changes to remote

So, all I do is write notes and run `/ingest`. Every once in a while I run `/lint` or `/audit`. When I want to query something I run the `/query` slash command.


## Viewing the generated site {#viewing-the-generated-site}

If I want to view the generated content (wiki pages, concepts, etc) locally, I just run `npx quartz build --serve`. Since everything gets pushed to remote, and the repo can be configured to be hosted on GitHub pages, the site can be accessed as `https://<username>.github.io` or `https://<username>.github.io/wiki`.
