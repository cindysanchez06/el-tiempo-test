import { New } from "../services/news.types"
import * as serviceNews from '../services/news';

type PropsNewCard = {
    notice: {
        title: string
        image: string
        created: string
        content: string
        author: string
        section: string
    }
} 

export default async function NewDetail({notice: {title,image,created,content,author,section}}: PropsNewCard){
    const date = new Date(created); 
    const formattedDate = new Intl.DateTimeFormat('es-ES', {
        day: 'numeric',
        month: 'long',
        year: 'numeric',
    }).format(date);
    return(
        <div className="h-[100vh]">
            <div className='bg-white text-black '>
                <h3 className='flex justify-center font-bold text-red-700 pt-7'>
                    {section.toUpperCase()}
                </h3>
                <h1 className='flex justify-center font-bold text-2xl'>
                    {title}
                </h1>
                <div className="row-span-3 m-20 flex justify-center">
                    <img src={image} className="h-100 w-120 object-cover"/>
                </div>
                <div className="mx-20 mb-20 px-20 pb-20"> 
                    <div className="row-span-1 flex justify-center col-span-2 text-gray-600 pb-5  border-b border-red-500">
                        <p className="text-inherit">
                            <a href="/staff/dotero" title="d" className=" hover:underline ml-1">
                            Por {author} - {formattedDate}
                            </a>
                        </p>
                    </div>
                    <p className="py-5">
                    {content}
                    </p>
                </div>
            </div>
        </div>

    );
}