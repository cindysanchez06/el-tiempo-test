import { New, NoticeDetail } from "./news.types"

export async function getNews(): Promise<New[]> {
    const data = await fetch('http://localhost:3000/api/news/news')
    const news = await data.json()
    return news
}

export async function getNewById(id: string): Promise<NoticeDetail> {
    const data = await fetch('http://localhost:3000/api/news/'+id)
    const [notice] = await data.json()
    return notice
}