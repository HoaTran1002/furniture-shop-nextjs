-- CreateTable
CREATE TABLE "Category" (
    "id" SERIAL NOT NULL,
    "desc" TEXT,
    "name" TEXT NOT NULL,
    "image" TEXT,

    CONSTRAINT "Category_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Brand" (
    "id" SERIAL NOT NULL,
    "desc" TEXT,
    "name" TEXT NOT NULL,
    "image" TEXT,

    CONSTRAINT "Brand_pkey" PRIMARY KEY ("id")
);
