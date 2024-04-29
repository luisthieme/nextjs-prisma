import prisma from "@/lib/prisma";

export default async function Home() {
  try {
    const user = await prisma.user.create({
      data: {
        email: "user@user.de",
        password: "user",
      },
    });
  } catch (e) {
    console.log(e);
  }

  const users = await prisma.user.findMany();

  return <main>{JSON.stringify(users)}</main>;
}
