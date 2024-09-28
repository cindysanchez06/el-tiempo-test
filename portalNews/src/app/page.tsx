import NewCard from './components/NewCard';

import * as serviceNews from './services/news';

export default async function Home() {

    const news = await serviceNews.getNews()
    console.log(news)
    return (
        <div className="h-[100vh] bg-white">
            {news.map((notice) => 
              <NewCard notice={notice} />
            )}
        </div>
    );
}
