**English** | [日本語](./README-ja.md)

# GraftQL

<p align="center">
  <img src="./assets/images/screenshots/app-query-en.png" alt="GraftQL query builder" width="720">
</p>

GraftQL is a desktop client built specifically for GraphQL — think of it as a GraphQL-focused counterpart to Postman or Insomnia. It fetches a schema by HTTP introspection so you can browse the documentation while you build queries, then send requests to one of several endpoints. The name comes from *grafting*: you extend a query branch by branch with **add Query** and **add Child**.

This repository is the **public issue tracker** for GraftQL — report bugs and request features here. GraftQL itself is closed-source.

- **Website**: https://graftql.com/en/
- **Download**: [Releases](https://github.com/trimixjp/GraftQL/releases)

## Features

- Browse a GraphQL schema fetched via HTTP introspection, with reference documentation alongside the builder.
- Graft-style query builder: **add Query** inserts a root field, **add Child** expands one level at a time.
- Switch between multiple endpoints using orthogonal connection profiles (environments).
- Authentication keeps the method (None / Bearer / Basic) separate from the secret value.
- Requests are sent from the Rust (reqwest) backend, so there are no browser CORS restrictions.
- Fetched schemas are cached locally in SQLite.

## How to report

Open a new issue and pick a template:

- **Bug report** — something isn't working as expected.
- **Feature request** — suggest an improvement or new capability.
- **Language request** — ask for a new UI language.

Japanese is welcome in every template — write in whichever language is easier for you.

## How fixes are handled

Bugs and requests are received here in the public tracker. Because the application source is closed, fixes are made in the private source tree and shipped in a release. When a fix ships, it is announced in the release notes, and the corresponding issue is closed with a note pointing to the version that contains the fix. This keeps each issue linked to the release that resolves it.

## Languages

GraftQL currently ships in **English** and **Japanese**. Additional languages are added based on demand and donations. The current priority order for new languages is:

1. Simplified Chinese (zh-CN)
2. Brazilian Portuguese (pt-BR)
3. Spanish (es)
4. Russian (ru)
5. Korean (ko)
6. German / French (de / fr)

To request a language, open a **Language request** issue.

## License / Source

GraftQL is **closed-source**. This repository holds only the public issue tracker — the READMEs, issue templates, and label tooling. The application source code is not published here.
