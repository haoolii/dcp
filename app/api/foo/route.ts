import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient();

export async function GET() {
    try {
        const foo = await prisma.foo.findFirst();
        return Response.json({ data: {
            foo
        } })
    } catch (e) {
        return Response.json({ data: JSON.stringify(e) })
    }
  }