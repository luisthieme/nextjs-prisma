import { PrismaClient } from "@prisma/client";

const prismaClient = new PrismaClient();

const globalForPrisma = global as unknown as { prisma: PrismaClient };

const prisma = globalForPrisma.prisma || prismaClient;

if (process.env.NODE_ENV != "production") {
  globalForPrisma.prisma = prisma;
}

export default prisma;
