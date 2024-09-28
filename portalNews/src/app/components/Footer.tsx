export default function Footer() {
    return (
        <footer className="row-start-3 flex gap-6 bg-red-700 flex-wrap items-center justify-center mt-auto">
            <ul className="menu__links--footer flex items-center ">
                <li className="px-8">
                    <a className="opacity-80 font-bold hover:opacity-100" href="https://www.motor.com.co/pages/terminos-y-condiciones.html" title="Términos y condiciones"
                       target="_self">Términos y condiciones</a>
                </li>
                <li className="px-8">
                    <a className="opacity-80 font-bold hover:opacity-100" href="https://www.motor.com.co/pages/privacidad.html" title="Aviso de privacidad" target="_self">Aviso
                        de privacidad</a>
                </li>
                <li className="px-8">
                    <a className="opacity-80 font-bold hover:opacity-100" href="https://www.motor.com.co/site/contacto/" title="Contáctenos" target="_self">Contáctenos</a>
                </li>
            </ul>
        </footer>
    )
};