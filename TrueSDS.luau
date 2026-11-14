-- Hmph why are you cracking this😣 --

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
bit32 = {};
local v0 = 32;
local v1 = 2 ^ v0;
bit32.bnot = function(v25)
	v25 = v25 % v1;
	return (v1 - 1) - v25;
end;
bit32.band = function(v26, v27)
	if ((v27 ~= 255) or (4593 <= 2672)) then
	else
		return v26 % 256;
	end
	if ((v27 == 65535) or (1168 > 3156)) then
		return v26 % 65536;
	end
	if ((v27 ~= 4294967295) or (572 > 4486)) then
	else
		return v26 % 4294967296;
	end
	v26, v27 = v26 % v1, v27 % v1;
	local v28 = 0;
	local v29 = 1;
	for v58 = 1, v0 do
		local v59, v60 = v26 % 2, v27 % 2;
		v26, v27 = math.floor(v26 / 2), math.floor(v27 / 2);
		if ((v59 + v60) ~= 2) then
		else
			v28 = v28 + v29;
		end
		v29 = 2 * v29;
	end
	return v28;
end;
bit32.bor = function(v30, v31)
	if (v31 == 255) then
		return (v30 - (v30 % 256)) + 255;
	end
	if ((1404 == 1404) and (v31 ~= 65535)) then
	else
		return (v30 - (v30 % 65536)) + 65535;
	end
	if (v31 ~= 4294967295) then
	else
		return 4294967295;
	end
	v30, v31 = v30 % v1, v31 % v1;
	local v32 = 0;
	local v33 = 1;
	for v61 = 1, v0 do
		local v62, v63 = v30 % 2, v31 % 2;
		v30, v31 = math.floor(v30 / 2), math.floor(v31 / 2);
		if (((v62 + v63) >= 1) or (3748 < 2212)) then
			v32 = v32 + v33;
		end
		v33 = 2 * v33;
	end
	return v32;
end;
bit32.bxor = function(v34, v35)
	v34, v35 = v34 % v1, v35 % v1;
	local v36 = 0;
	local v37 = 1;
	for v64 = 1, v0 do
		local v65, v66 = v34 % 2, v35 % 2;
		v34, v35 = math.floor(v34 / 2), math.floor(v35 / 2);
		if ((v65 + v66) ~= 1) then
		else
			v36 = v36 + v37;
		end
		v37 = 2 * v37;
	end
	return v36;
end;
bit32.lshift = function(v38, v39)
	if (math.abs(v39) >= v0) then
		return 0;
	end
	v38 = v38 % v1;
	if (v39 < 0) then
		return math.floor(v38 * (2 ^ v39));
	else
		return (v38 * (2 ^ v39)) % v1;
	end
end;
bit32.rshift = function(v40, v41)
	if ((math.abs(v41) >= v0) or (1180 == 2180)) then
		return 0;
	end
	v40 = v40 % v1;
	if ((4090 < 4653) and (v41 > 0)) then
		return math.floor(v40 * (2 ^ -v41));
	else
		return (v40 * (2 ^ -v41)) % v1;
	end
end;
bit32.arshift = function(v42, v43)
	if ((math.abs(v43) < v0) or (2652 < 196)) then
	else
		return 0;
	end
	v42 = v42 % v1;
	if (v43 > 0) then
		local v100 = 0;
		if ((4135 < 4817) and (v42 < (v1 / 2))) then
		else
			v100 = v1 - (2 ^ (v0 - v43));
		end
		return math.floor(v42 * (2 ^ -v43)) + v100;
	else
		return (v42 * (2 ^ -v43)) % v1;
	end
end;
local v9 = tonumber;
local v10 = string.byte;
local v11 = string.char;
local v12 = string.sub;
local v13 = string.gsub;
local v14 = string.rep;
local v15 = table.concat;
local v16 = table.insert;
local v17 = math.ldexp;
local v18 = getfenv or function()
	return _ENV;
end;
local v19 = setmetatable;
local v20 = pcall;
local v21 = select;
local v22 = unpack or table.unpack;
local v23 = tonumber;
local function v24(v44, v45, ...)
	local v46 = 1;
	local v47;
	v44 = v13(v12(v44, 5), LUAOBFUSACTOR_DECRYPT_STR_0("\159\141", "\126\177\163\187\69\134\219\167"), function(v67)
		if (v10(v67, 2) == 81) then
			v47 = v9(v12(v67, 1, 1));
			return "";
		else
			local v125 = v11(v9(v67, 16));
			if ((272 == 272) and v47) then
				local v135 = v14(v125, v47);
				v47 = nil;
				return v135;
			else
				return v125;
			end
		end
	end);
	local function v48(v68, v69, v70)
		if v70 then
			local v126 = (v68 / (2 ^ (v69 - 1))) % (2 ^ (((v70 - 1) - (v69 - 1)) + 1));
			return v126 - (v126 % 1);
		else
			local v127 = 2 ^ (v69 - 1);
			return (((v68 % (v127 + v127)) >= v127) and 1) or 0;
		end
	end
	local function v49()
		local v71 = v10(v44, v46, v46);
		v46 = v46 + 1;
		return v71;
	end
	local function v50()
		local v72, v73 = v10(v44, v46, v46 + 2);
		v46 = v46 + 2;
		return (v73 * 256) + v72;
	end
	local function v51()
		local v74, v75, v76, v77 = v10(v44, v46, v46 + 3);
		v46 = v46 + 4;
		return (v77 * 16777216) + (v76 * 65536) + (v75 * 256) + v74;
	end
	local function v52()
		local v78 = v51();
		local v79 = v51();
		local v80 = 1;
		local v81 = (v48(v79, 1, 20) * (2 ^ 32)) + v78;
		local v82 = v48(v79, 21, 31);
		local v83 = ((v48(v79, 32) == 1) and -1) or 1;
		if ((100 <= 3123) and (v82 == 0)) then
			if ((v81 == 0) or (1369 > 4987)) then
				return v83 * 0;
			else
				v82 = 1;
				v80 = 0;
			end
		elseif (v82 == 2047) then
			return ((v81 == 0) and (v83 * (1 / 0))) or (v83 * NaN);
		end
		return v17(v83, v82 - 1023) * (v80 + (v81 / (2 ^ 52)));
	end
	local function v53(v84)
		local v85;
		if (not v84 or (863 >= 4584)) then
			v84 = v51();
			if (v84 ~= 0) then
			else
				return "";
			end
		end
		v85 = v12(v44, v46, (v46 + v84) - 1);
		v46 = v46 + v84;
		local v86 = {};
		for v101 = 1, #v85 do
			v86[v101] = v11(v10(v12(v85, v101, v101)));
		end
		return v15(v86);
	end
	local v54 = v51;
	local function v55(...)
		return {...}, v21("#", ...);
	end
	local function v56()
		local v87 = {};
		local v88 = {};
		local v89 = {};
		local v90 = {v87,v88,nil,v89};
		local v91 = v51();
		local v92 = {};
		for v103 = 1, v91 do
			local v104 = v49();
			local v105;
			if ((v104 == 1) or (724 >= 1668)) then
				v105 = v49() ~= 0;
			elseif ((428 < 1804) and (v104 == 2)) then
				v105 = v52();
			elseif ((v104 == 3) or (3325 > 4613)) then
				v105 = v53();
			end
			v92[v103] = v105;
		end
		v90[3] = v49();
		for v107 = 1, v51() do
			local v108 = v49();
			if ((v48(v108, 1, 1) ~= 0) or (4950 <= 4553)) then
			else
				local v131 = v48(v108, 2, 3);
				local v132 = v48(v108, 4, 6);
				local v133 = {v50(),v50(),nil,nil};
				if ((2665 <= 3933) and (v131 == 0)) then
					v133[3] = v50();
					v133[4] = v50();
				elseif (v131 == 1) then
					v133[3] = v51();
				elseif ((3273 == 3273) and (v131 == 2)) then
					v133[3] = v51() - (2 ^ 16);
				elseif ((3824 > 409) and (v131 ~= 3)) then
				else
					v133[3] = v51() - (2 ^ 16);
					v133[4] = v50();
				end
				if (v48(v132, 1, 1) == 1) then
					v133[2] = v92[v133[2]];
				end
				if (v48(v132, 2, 2) ~= 1) then
				else
					v133[3] = v92[v133[3]];
				end
				if (v48(v132, 3, 3) == 1) then
					v133[4] = v92[v133[4]];
				end
				v87[v107] = v133;
			end
		end
		for v109 = 1, v51() do
			v88[v109 - 1] = v56();
		end
		return v90;
	end
	local function v57(v94, v95, v96)
		local v97 = v94[1];
		local v98 = v94[2];
		local v99 = v94[3];
		return function(...)
			local v111 = v97;
			local v112 = v98;
			local v113 = v99;
			local v114 = v55;
			local v115 = 1;
			local v116 = -1;
			local v117 = {};
			local v118 = {...};
			local v119 = v21("#", ...) - 1;
			local v120 = {};
			local v121 = {};
			for v128 = 0, v119 do
				if (v128 >= v113) then
					v117[v128 - v113] = v118[v128 + 1];
				else
					v121[v128] = v118[v128 + 1];
				end
			end
			local v122 = (v119 - v113) + 1;
			local v123;
			local v124;
			while true do
				v123 = v111[v115];
				v124 = v123[1];
				if (v124 <= 13) then
					if (v124 <= 6) then
						if (v124 <= 2) then
							if (v124 <= 0) then
								if not v121[v123[2]] then
									v115 = v115 + 1;
								else
									v115 = v123[3];
								end
							elseif ((2087 == 2087) and (v124 == 1)) then
								local v162 = v123[2];
								v121[v162] = v121[v162](v22(v121, v162 + 1, v116));
							else
								v121[v123[2]] = v121[v123[3]][v123[4]];
							end
						elseif (v124 <= 4) then
							if (v124 == 3) then
								v121[v123[2]] = v96[v123[3]];
							else
								v121[v123[2]] = v95[v123[3]];
							end
						elseif ((v124 > 5) or (3404 > 4503)) then
							if v121[v123[2]] then
								v115 = v115 + 1;
							else
								v115 = v123[3];
							end
						else
							do
								return;
							end
						end
					elseif ((v124 <= 9) or (3506 <= 1309)) then
						if (v124 <= 7) then
							local v150 = v123[2];
							local v151, v152 = v114(v121[v150](v22(v121, v150 + 1, v123[3])));
							v116 = (v152 + v150) - 1;
							local v153 = 0;
							for v158 = v150, v116 do
								v153 = v153 + 1;
								v121[v158] = v151[v153];
							end
						elseif ((2955 == 2955) and (v124 == 8)) then
							local v170 = v123[2];
							do
								return v22(v121, v170, v170 + v123[3]);
							end
						else
							v115 = v123[3];
						end
					elseif (v124 <= 11) then
						if ((v124 > 10) or (2903 == 1495)) then
							local v172 = v112[v123[3]];
							local v173;
							local v174 = {};
							v173 = v19({}, {[LUAOBFUSACTOR_DECRYPT_STR_0("\28\242\35\203\248\38\213", "\156\67\173\74\165")]=function(v248, v249)
								local v250 = v174[v249];
								return v250[1][v250[2]];
							end,[LUAOBFUSACTOR_DECRYPT_STR_0("\11\136\71\19\171\47\72\48\178\81", "\38\84\215\41\118\220\70")]=function(v251, v252, v253)
								local v254 = v174[v252];
								v254[1][v254[2]] = v253;
							end});
							for v256 = 1, v123[4] do
								v115 = v115 + 1;
								local v257 = v111[v115];
								if ((4546 >= 2275) and (v257[1] == 21)) then
									v174[v256 - 1] = {v121,v257[3]};
								else
									v174[v256 - 1] = {v95,v257[3]};
								end
								v120[#v120 + 1] = v174;
							end
							v121[v123[2]] = v57(v172, v173, v96);
						else
							local v176 = v123[2];
							v121[v176] = v121[v176](v22(v121, v176 + 1, v123[3]));
						end
					elseif (v124 > 12) then
						local v178;
						local v179, v180;
						local v181;
						local v182;
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v182 = v123[2];
						v181 = v121[v123[3]];
						v121[v182 + 1] = v181;
						v121[v182] = v181[v123[4]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v182 = v123[2];
						v179, v180 = v114(v121[v182](v22(v121, v182 + 1, v123[3])));
						v116 = (v180 + v182) - 1;
						v178 = 0;
						for v259 = v182, v116 do
							v178 = v178 + 1;
							v121[v259] = v179[v178];
						end
						v115 = v115 + 1;
						v123 = v111[v115];
						v182 = v123[2];
						v121[v182] = v121[v182](v22(v121, v182 + 1, v116));
						v115 = v115 + 1;
						v123 = v111[v115];
						v182 = v123[2];
						v121[v182] = v121[v182]();
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v182 = v123[2];
						v121[v182](v121[v182 + 1]);
					else
						local v192;
						local v193;
						local v194;
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v121[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v194 = v123[2];
						v121[v194] = v121[v194](v121[v194 + 1]);
						v115 = v115 + 1;
						v123 = v111[v115];
						v193 = v123[3];
						v192 = v121[v193];
						for v262 = v193 + 1, v123[4] do
							v192 = v192 .. v121[v262];
						end
						v121[v123[2]] = v192;
						v115 = v115 + 1;
						v123 = v111[v115];
						v194 = v123[2];
						v121[v194](v121[v194 + 1]);
					end
				elseif ((819 >= 22) and (v124 <= 20)) then
					if (v124 <= 16) then
						if ((3162 == 3162) and (v124 <= 14)) then
							do
								return v121[v123[2]];
							end
						elseif (v124 > 15) then
							local v203 = v123[2];
							v121[v203] = v121[v203](v121[v203 + 1]);
						else
							local v205 = v123[2];
							v121[v205] = v121[v205]();
						end
					elseif ((v124 <= 18) or (2369 > 4429)) then
						if ((4095 >= 3183) and (v124 > 17)) then
							local v207 = v123[2];
							v121[v207](v121[v207 + 1]);
						else
							local v208 = v123[2];
							local v209 = {v121[v208](v121[v208 + 1])};
							local v210 = 0;
							for v263 = v208, v123[4] do
								v210 = v210 + 1;
								v121[v263] = v209[v210];
							end
						end
					elseif ((v124 == 19) or (3711 < 1008)) then
						local v211;
						local v212, v213;
						local v214;
						local v215;
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v215 = v123[2];
						v214 = v121[v123[3]];
						v121[v215 + 1] = v214;
						v121[v215] = v214[v123[4]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v215 = v123[2];
						v212, v213 = v114(v121[v215](v22(v121, v215 + 1, v123[3])));
						v116 = (v213 + v215) - 1;
						v211 = 0;
						for v266 = v215, v116 do
							v211 = v211 + 1;
							v121[v266] = v212[v211];
						end
						v115 = v115 + 1;
						v123 = v111[v115];
						v215 = v123[2];
						v121[v215] = v121[v215](v22(v121, v215 + 1, v116));
						v115 = v115 + 1;
						v123 = v111[v115];
						v215 = v123[2];
						v121[v215] = v121[v215]();
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v123[3];
						v115 = v115 + 1;
						v123 = v111[v115];
						v215 = v123[2];
						v121[v215](v121[v215 + 1]);
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v121[v123[3]];
					else
						local v225 = v123[2];
						local v226 = v121[v123[3]];
						v121[v225 + 1] = v226;
						v121[v225] = v226[v123[4]];
					end
				elseif (v124 <= 23) then
					if ((v124 <= 21) or (1049 <= 906)) then
						v121[v123[2]] = v121[v123[3]];
					elseif (v124 > 22) then
						v121[v123[2]]();
					else
						local v230 = v121[v123[4]];
						if not v230 then
							v115 = v115 + 1;
						else
							v121[v123[2]] = v230;
							v115 = v123[3];
						end
					end
				elseif ((4513 > 2726) and (v124 <= 25)) then
					if (v124 == 24) then
						v121[v123[2]] = v123[3];
					else
						local v233;
						local v234;
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v234 = v123[2];
						v233 = v121[v123[3]];
						v121[v234 + 1] = v233;
						v121[v234] = v233[v123[4]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v95[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v234 = v123[2];
						v121[v234] = v121[v234](v22(v121, v234 + 1, v123[3]));
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v96[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v121[v123[2]] = v121[v123[3]];
						v115 = v115 + 1;
						v123 = v111[v115];
						v234 = v123[2];
						v121[v234] = v121[v234](v121[v234 + 1]);
						v115 = v115 + 1;
						v123 = v111[v115];
						if v121[v123[2]] then
							v115 = v115 + 1;
						else
							v115 = v123[3];
						end
					end
				elseif ((v124 > 26) or (1481 >= 2658)) then
					v121[v123[2]] = not v121[v123[3]];
				else
					local v245 = v123[3];
					local v246 = v121[v245];
					for v269 = v245 + 1, v123[4] do
						v246 = v246 .. v121[v269];
					end
					v121[v123[2]] = v246;
				end
				v115 = v115 + 1;
			end
		end;
	end
	return v57(v56(), {}, v45)(...);
end
return v24("LOL!0C3Q0003043Q0067616D65030A3Q004765745365727669636503103Q0055736572496E70757453657276696365034Q00030A3Q006C6F6164737472696E6703073Q00482Q747047657403713Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F4D61746F693Q372F5344532D56312E322D50432D2F726566732F68656164732F6D61696E2F53445325323056312E3225323028254630253946253936254135254546254238253846292E6C756175036C3Q00682Q7470733A2Q2F7261772E67697468756275736572636F6E74656E742E636F6D2F4D61746F693Q372F5344532D56312E322D4D6F62696C652D2F726566732F68656164732F6D61696E2F53445325323056312E3225323028254630253946253933254231292E6C75617503053Q007063612Q6C03043Q007761726E035C3Q00E0B980E0B881E0B8B4E0B894E0B882E0B989E0B8ADE0B89CE0B8B4E0B894E0B89EE0B8A5E0B8B2E0B894E0B983E0B899E0B881E0B8B2E0B8A3E0B982E0B8ABE0B8A5E0B894E0B8AAE0B884E0B8A3E0B8B4E0B89BE0B895E0B98C3A2003083Q00746F737472696E67002F3Q0012033Q00013Q0020145Q0002001218000200034Q000A3Q0002000200060B00013Q000100012Q00157Q00120D000200043Q00122Q000300053Q00122Q000400013Q00202Q00040004000600122Q000600076Q000400066Q00033Q00024Q00030001000200122Q000400046Q00030002000100120D000300043Q00122Q000400053Q00122Q000500013Q00202Q00050005000600122Q000700086Q000500076Q00043Q00024Q00040001000200122Q000500046Q0004000200012Q0015000400014Q000F000400010002002Q060004002000013Q0004093Q0020000100061600040021000100030004093Q002100012Q0015000400023Q001203000500093Q00060B00060001000100012Q00153Q00044Q001100050002000600062Q0005002E000100010004093Q002E00010012030007000A3Q00120C0008000B3Q00122Q0009000C6Q000A00066Q0009000200024Q0008000800094Q0007000200012Q00053Q00013Q00023Q00023Q00030C3Q00546F756368456E61626C6564030F3Q004B6579626F617264456E61626C656400094Q00047Q0020025Q0001002Q063Q000700013Q0004093Q000700012Q00047Q0020025Q00022Q001B8Q000E3Q00024Q00053Q00017Q00053Q0003043Q0067616D6503073Q00482Q7470476574030A3Q006C6F6164737472696E6703043Q007761726E034E3Q00E0B984E0B8A1E0B988E0B8AAE0B8B2E0B8A1E0B8B2E0B8A3E0B896E0B884E0B8ADE0B8A1E0B984E0B89EE0B8A5E0B98CE0B8AAE0B884E0B8A3E0B8B4E0B89BE0B895E0B98CE0B984E0B894E0B98900103Q0012193Q00013Q00206Q00024Q00029Q000002000200122Q000100036Q00028Q00010002000200062Q0001000C00013Q0004093Q000C00012Q0015000200014Q00170002000100010004093Q000F0001001203000200043Q001218000300054Q00120002000200012Q00053Q00017Q00", v18(), ...);
