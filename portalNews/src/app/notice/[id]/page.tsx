import NewDetail from '@/app/components/NewDetail';
import * as serviceNews from '@/app/services/news';
import { useRouter } from 'next/navigation';

type NoticeProps = {
    params: {
        id: string
    }
};
export default async function Home({params: {id}}: NoticeProps) {
    const notice = await serviceNews.getNewById(id)
    return (
        <div className="h-[100vh]">
            <NewDetail notice={notice} />
        </div>
    );
}
