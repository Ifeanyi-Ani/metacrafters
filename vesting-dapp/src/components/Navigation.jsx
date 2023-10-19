import { NavLink } from 'react-router-dom';

const Navigation = () => {
  return (
    <div className="fixed w-[200px] h-full bg-[#102227] border-l-[10px solid #102227] overflow-hidden">
      <ul className="absolute top-0 left-0 w-full">
        <li className="relative w-full list-none rounded hover:bg-white">
          <NavLink
            to="/"
            className="relative block w-full text-white hover:text-[#102227]"
          >
            Dashboard
          </NavLink>
        </li>
        <li className="relative w-full list-none rounded hover:bg-white">
          <NavLink
            className="relative block w-full text-white hover:text-[#102227]"
            to="/organizations"
          >
            Organizations
          </NavLink>
        </li>
        <li className="relative w-full list-none rounded hover:bg-white">
          <NavLink
            className="relative block w-full text-white hover:text-[#102227]"
            to="/stakholders"
          >
            Stakeholders
          </NavLink>
        </li>
        <li className="relative w-full list-none rounded hover:bg-white">
          <NavLink
            className="relative block w-full text-white hover:text-[#102227]"
            role="button"
          >
            Create
          </NavLink>
        </li>
        <li className="relative w-full list-none rounded hover:bg-white">
          <NavLink
            className="relative block w-full text-white hover:text-[#102227]"
            role="button"
          >
            Register
          </NavLink>
        </li>
      </ul>
    </div>
  );
};

export default Navigation;
