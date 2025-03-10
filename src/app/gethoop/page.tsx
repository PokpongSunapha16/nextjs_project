"use client";

import { useRouter } from "next/navigation";

export default function GetHoopPage() {
  const router = useRouter();

  const handleNavigate = (path: string) => {
    router.push(path); // Navigate to the specified path
  };

  return (
    <div className="min-h-screen bg-gray-100 flex flex-col items-center justify-center relative">
      {/* Back Button */}
      <button
        onClick={() => router.push("/home")}
        className="absolute top-4 left-4 bg-gray-200 hover:bg-gray-300 text-black font-bold py-2 px-3 rounded-full flex items-center shadow-md"
      >
        <span className="material-icons mr-1">⬅</span>
        ย้อนกลับ
      </button>

      {/* Main Box */}
      <div className="bg-gray-50 shadow-md rounded-lg w-96 p-8 text-center">
        <h1 className="text-3xl font-bold text-black mb-8">GET HOOP</h1>

        {/* Buttons */}
        <div className="space-y-4">
        <button
            onClick={() => handleNavigate("/quickmatch")}
            className="w-full py-3 text-red-500 font-semibold border border-red-500 rounded-lg hover:bg-red-500 hover:text-white transition duration-300"
          >
            QUICK MATCH
          </button>

          <button
            onClick={() => handleNavigate("/findteam")}
            className="w-full py-3 text-black font-semibold border border-gray-300 rounded-lg hover:bg-gray-200 transition duration-300"
          >
            ค้นหาทีม
          </button>
          <button
            onClick={() => handleNavigate("/findplayer")}
            className="w-full py-3 text-black font-semibold border border-gray-300 rounded-lg hover:bg-gray-200 transition duration-300"
          >
            ค้นหาผู้เล่น
          </button>
          <button
            onClick={() => handleNavigate("/team_management")}
            className="w-full py-3 text-orange-500 font-semibold border border-orange-500 rounded-lg hover:bg-orange-500 hover:text-white transition duration-300"
          >
            ทีมของคุณ
          </button>
        </div>
      </div>
    </div>
  );
}
