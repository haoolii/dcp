import { PrismaClient } from "@prisma/client"


export async function GET() {
    try {
        const prisma = new PrismaClient();
        const foo = await prisma.foo.findFirst();
        return Response.json({ data: {
            foo
        } })
    } catch (e) {
        return Response.json({ data: JSON.stringify(e) })
    }
  }