import pool from "@/app/libs/conexion";
import type { NextApiRequest, NextApiResponse } from 'next'

type ResponseData = any

export default async function handler(
    req: NextApiRequest,
    res: NextApiResponse<ResponseData>
  ) {
      const id = req.query.id
      const db = await pool.getConnection()
      const query = 'select news.title, news.image, news.created, news.content, authors.name as author, sections.name as section from news inner join authors on authors.id = news.autorId inner join sections on sections.id = news.sectionId where news.id ='+id
      const [rows] = await db.execute(query)
      db.release()
      res.status(200).json(rows)
  }