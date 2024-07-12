<div align="center">
  <h1>Flavatar</h1>

  <p>🧑‍🦱 A playful avatar generator 🧑‍🦳</p>

[简体中文](./README-CN.md)

</div>

<a href="https://vue-color-avatar.leoku.dev">
  <img src="./images/social-preview-1.png" alt="website-cover" />
</a>

## Preview

[`https://vue-color-avatar.leoku.dev`](https://vue-color-avatar.leoku.dev)

## Introduction

**This is a vector style avatar generator, you can match different material components to generate your own personalized avatar.**

Features you might be interested in:

- Visual component configuration bar
- Randomly generate an avatar
- Redo/Undo
- i18n
- Generate multiple avatars in batch

## Assets

> **Note**  
> The avatar assets implementation of [Avatar Illustration System](https://www.figma.com/community/file/829741575478342595) by Micah Lanier. And the licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

## Develop

This project is built with `Vue3` + `Vite`.

```sh
# 1. Clone project
git clone https://github.com/sscaifesu/flavatar.git

# 2. Install dependencies
yarn install

# 3. Run
yarn dev
```

## Docker deploy

You can directly run using the image I have already built.

```sh
docker run -d -t -p 8080:8080 \
--name=flavatar \
--restart=always \
docker.io/echoer/flavatar:latest

```

Or, you can manually compile it yourself if you prefer.

```sh
#clone the code
git clone https://github.com/sscaifesu/flavatar.git

#docker build
cd vue-color-avatar/
docker build -t echoer/flavatar .

#start server
docker run -d -t -p 8080:8080 --name flavatar --restart=always echoer/flavatar
```

Finally, open your browser and access the service's address at http://serverIP:8080.
