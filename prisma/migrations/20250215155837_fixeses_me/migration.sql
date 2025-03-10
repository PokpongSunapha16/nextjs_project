/*
  Warnings:

  - You are about to drop the `commentboard` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `commentboard` DROP FOREIGN KEY `CommentBoard_teamId_fkey`;

-- DropForeignKey
ALTER TABLE `commentboard` DROP FOREIGN KEY `CommentBoard_userId_fkey`;

-- DropTable
DROP TABLE `commentboard`;
