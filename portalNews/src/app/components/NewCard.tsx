import { New } from "../services/news.types"
import Notice from './NewDetail';
import Link from 'next/link'

type PropsNewCard = {
    notice: New
}

export default function NewCard({notice: {id,title,image,created,sectionId,author,section}}: PropsNewCard) {

    const date = new Date(created); 
    const formattedDate = new Intl.DateTimeFormat('es-ES', {
        day: 'numeric',
        month: 'long',
        year: 'numeric',
    }).format(date);
    return (
        <div className="flex justify-center bg-gray-100 pt-[1px] ">
            <div className="grid grid-rows-3 grid-flow-col gap-4 text-black my-5  rounded-md border border-gray-200 bg-white w-[700px]  ">
                <div className="row-span-3 ">
                    <img src={image} alt="Vainilla" className="h-[200px] w-[300px] object-cover"/>
                </div>
                <div className="row-span-1 col-span-2 px-5 pt-3 ">
                    <h3 className="mt-2 text-lg text-red-700 font-bold  ">{section.toUpperCase()}</h3>
                </div>
                <div className="row-span-1  col-span-2 px-5 pb">
                    <h2 className="mt-2 text-lg font-bold">
                        <Link href={`/notice/${id}`}
                        title={title}
                        target="_self"
                        className="text-black hover:text-red-700">
                            {title.toUpperCase()}
                        </Link>
                    </h2>
                </div>
                <div className="row-span-1 flex col-span-2 px-5 text-gray-600">
                    <p className="text-inherit">
                        Por
                        <a href="/staff/dotero" title={author} className=" hover:underline ml-1">
                            {author} - {formattedDate}
                        </a>
                    </p>
                </div>
            </div>
        </div>
    )
}