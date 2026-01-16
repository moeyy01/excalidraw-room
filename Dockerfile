FROM oven/bun:1-alpine

WORKDIR /excalidraw-room

COPY package.json bun.lockb ./
RUN bun install --frozen-lockfile

COPY src ./src
COPY public ./public
COPY tsconfig.json ./

ENV NODE_ENV=production
EXPOSE 3000
CMD ["bun", "src/index.ts"]
