/*
  Warnings:

  - Added the required column `name` to the `Foo` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Foo" ADD COLUMN     "name" TEXT NOT NULL;
