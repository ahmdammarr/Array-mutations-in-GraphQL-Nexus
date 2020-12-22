-- CreateTable
CREATE TABLE "PostRMain" (
"id" SERIAL,
    "title" TEXT NOT NULL,
    "postRSubId" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PostRSub" (
"id" SERIAL,
    "title" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "PostRMain_postRSubId_unique" ON "PostRMain"("postRSubId");

-- AddForeignKey
ALTER TABLE "PostRMain" ADD FOREIGN KEY("postRSubId")REFERENCES "PostRSub"("id") ON DELETE SET NULL ON UPDATE CASCADE;
