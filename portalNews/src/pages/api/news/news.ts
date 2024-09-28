import pool from "@/app/libs/conexion";
import type { NextApiRequest, NextApiResponse } from 'next'
 
 type ResponseData = any
 //{
//     id: string
//     title: string
//     image: string
//     created: string
//     sectionId: string
//     author: string
//     section: string
// }
 
export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse<ResponseData>
) {
    const db = await pool.getConnection()
    const query = 'select news.id, news.title, news.image, news.created, news.sectionId, authors.name as author, sections.name as section from news inner join authors on authors.id = news.autorId inner join sections on sections.id = news.sectionId'
    const [rows] = await db.execute(query)
    db.release()
    res.status(200).json(rows)
}