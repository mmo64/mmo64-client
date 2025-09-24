# mmo64-client

## Links

[Main Website](https://mmo64.github.io)

[Discord Server](https://discord.gg/eA5hkV4nnU)

## What is this?

This is a continuation of SM64JS MMO.

## Usage instructions

Install [Node.js](https://nodejs.org/).

### Client-only development

Run the following commands:

- Install dependencies:

```sh
npm install
```

- Build and serve project:

```sh
npm run start
```

- Go to https://localhost:9300 and start developing in your IDE.

When you do code changes, Webpack-Dev-Server will automatically rebuild and reload the page.

Since the certificate is self-signed, you will have to accept your browser warning and continue.
If you want to omit the warning and have a properly signed certificate, please follow these step:

- Install [mkcert](https://github.com/FiloSottile/mkcert)
- Run this commands:

```sh
mkcert -install localhost
```

That's it.
You should now be able to go to https://localhost:9300 and no longer see the warning from your browser.

### Develop against local backend

Do not clone this repository directly.
Instead cloning should be done from the [server repository](https://github.com/mmo64/mmo64-server)
as a Git submodule.

Serving via Webpack-Dev-Server is not yet supported,
so you will have to do a development build via `npm run build:dev`
every time you do code changes to the client.

## Related Projects

[Super Mario 64 Decomp](https://github.com/n64decomp/sm64)

- Team that decompiled the original Super Mario 64 ROMs into C source code

[Super Mario 64 PC Port](https://github.com/sm64-port/sm64-port)

- Team that ported the decompiled project to PC

[N64 Fast 3D Renderer](https://github.com/Emill/n64-fast3d-engine)

- OpenGL Implementation of a 3D renderer for the Nintendo 64's graphics
  (For this project, it was re-implemented in Javascript and WebGL)
