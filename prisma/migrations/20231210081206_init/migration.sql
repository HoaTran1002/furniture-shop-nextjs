-- CreateEnum
CREATE TYPE "EProductTag" AS ENUM ('NEW', 'HOT_SALES', 'NEW_OPEN');

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "image" TEXT,
    "desc" TEXT,
    "name" TEXT NOT NULL,
    "tag" "EProductTag",
    "price" BIGINT,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "User"("email");
