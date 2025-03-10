/*
  Warnings:

  - A unique constraint covering the columns `[reviewed_user_id,reviewer_user_id]` on the table `Review` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `updated_at` to the `Review` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `review` ADD COLUMN `updated_at` DATETIME(3) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX `Review_reviewed_user_id_reviewer_user_id_key` ON `Review`(`reviewed_user_id`, `reviewer_user_id`);
