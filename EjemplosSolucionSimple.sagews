︠4495d911-6bf9-40d8-a647-93cfd3ce4263s︠
p.<x,y,z>=PolynomialRing(QQ,order="lex");p
︡788a986f-2644-4bae-a050-8dad13384cc0︡{"stdout":"Multivariate Polynomial Ring in x, y, z over Rational Field"}︡{"stdout":"\n"}︡{"done":true}
︠78cb0fe7-7c6e-4589-9262-a9b7b959531b︠
︡41aadaf9-a394-47f0-be95-ed3b0b31ad8e︡
︠dd1ddb31-f9be-45d6-a67e-85061ef7fbd5s︠
f1=x-y^2-z^2
︡b69943ee-b8c6-48d8-b897-f3587b0b0693︡{"done":true}
︠8a03914b-6957-4e80-9b7e-bc801a274150︠
︡3c3d9686-9e24-4831-8b39-e1fdb1004708︡
︠b9ce09f4-d718-4287-8561-f3ee86af7e8ds︠
f2=y^2-z
︡b2f73291-690e-4c4e-a4a7-a6ed99558fc9︡{"done":true}
︠2ec762c3-0c5d-4f69-b88f-b5b684f7c672︠
︡4c48c67e-0b7b-4ff7-ae0d-caa0356c0cc7︡
︠9a7d5950-86cc-4b3f-a8ff-8c8c2434fe4cs︠
f3=z^2-1
︡77080ef0-88e4-484d-a51f-5c4f410456d4︡{"done":true}
︠c30e466d-fb9e-414e-82f6-794ff6a038f5︠
︡040d4400-8e03-429a-a293-ee9184b4ebaf︡
︠04e2606a-2e84-43eb-b798-0fc8e6c3b763s︠
J=Ideal(f1,f2,f3)
︡4354889d-588d-4c2f-8451-43895d0630ae︡{"done":true}
︠4828fcf3-4e9f-4cbc-9526-7733a7427adf︠
︡5647928b-e6be-45d8-801b-ebe1eea9668a︡
︠9c613ccf-59ed-4228-b7a1-0b1f84097699s︠
Jg=J.groebner_basis();Jg
︡1d90f323-5625-43aa-825a-04441008893c︡{"stdout":"[x - z - 1, y^2 - z, z^2 - 1]\n"}︡{"done":true}
︠2e186cd1-0e07-4573-ab20-925c27cd71cf︠
︡1d51858f-520c-4e47-9646-ff294c57331d︡
︠0afd3a23-b19d-4faa-a778-f7b7657defd0s︠
Ja=J.normal_basis();Ja
︡369c86fa-0d50-4acd-b60a-18ac6fb96185︡{"stdout":"[y*z, z, y, 1]\n"}︡{"done":true}
︠6361b3f1-da3c-4dba-9375-8dc5733de580︠
︡7c1211ca-c894-4318-8b40-77c7c6c04675︡
︠0463d3d9-7087-45d1-baf5-ad93b59ff1b8s︠
Jn=[1,z,y,y*z];Jn
︡47119148-17fb-4c33-a888-4d606dfcdb7b︡{"stdout":"[1, z, y, y*z]\n"}︡{"done":true}
︠e7ffca06-0622-459f-a910-7de99515988f︠
︡56587a97-aaf1-4e8d-97ca-53093502e289︡
︠42fc9112-ff85-44d9-bd38-83e17eab84b7s︠
f=(x+y+z)
︡ac645f77-4805-43d7-873d-c63ad10147a2︡{"done":true}
︠7057781c-f4bb-40cb-b191-c078ed746763︠
︡72e3ec39-a0ab-4d4a-a2e3-b060e6987ec2︡
︠70d0b011-3d62-44a3-a7b4-1592343452b2s︠
Mint=[(f*j).reduce(Jg)for j in Jn];Mint
︡e6af452b-101d-4998-ab6d-705fa444df48︡{"stdout":"[y + 2*z + 1, y*z + z + 2, 2*y*z + y + z, y*z + 2*y + 1]\n"}︡{"done":true}
︠83ef4e58-67af-4c0b-8ee9-83fd2926bd7f︠
︡0a220eb2-df6e-4780-834c-6ced36030837︡
︠834a1583-6e12-4493-be8c-0e72cd109821s︠
Mf=matrix(QQ,[[1,2,0,1],[2,1,1,0],[1,0,1,2],[0,1,2,1]]);show(Mf)
︡a7f2f9da-d937-4b1c-95f3-e726db934b3f︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 2 &amp; 0 &amp; 1 \\\\\n2 &amp; 1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 &amp; 2 \\\\\n0 &amp; 1 &amp; 2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠29302ba1-e766-4949-8097-67159c4536b5︠
︡18be2a54-8848-4445-8e8a-a9e10847ce88︡
︠abac2ca3-17c8-4353-922f-3e28dbe7e290s︠
Mf.eigenspaces_left()
︡bcc075f6-c2b8-4d64-9f1a-f13602fc1459︡{"stdout":"[\n(4, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[1 1 1 1]),\n(2, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[ 1  1 -1 -1]),\n(-1 - 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1 -1*I  1*I]),\n(-1 + 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1  1*I -1*I])\n]"}︡{"stdout":"\n"}︡{"done":true}
︠035a1d72-1c74-4b7b-b45e-fd975319e061︠
︡629a26c8-1829-43e3-a6ef-58f1bb97a1e0︡
︠865cd6b4-25ad-4464-8fd5-e5cb2057f134︠
︡162f3b9a-4c5c-442a-be03-bf6a701b661b︡
︠7b1df8ca-ad88-4a51-be4f-ba21f8f66b0bs︠
Mf.eigenspaces_right()
︡60510971-9303-40ce-a021-ca718c3ba69a︡{"stdout":"[\n(4, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[1 1 1 1]),\n(2, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[ 1  1 -1 -1]),\n(-1 - 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1  1*I -1*I]),\n(-1 + 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1 -1*I  1*I])\n]\n"}︡{"done":true}
︠58b5cec0-5d66-4ade-b4a3-b3b46ef2de10︠
︡90d71098-b97d-449f-b0b1-23098832c937︡
︠cfcb68fd-2078-4251-bb68-cceb1d8db2fe︠
P=matrix(CC,[[1,1,1,1],[1,1,-1,-1],[1,-1,1*I,-1*I],[1,-1,-1*I,1*I]]);show(P)
︡91cef68a-b7d6-4498-8812-631531e31625︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1.00000000000000 &amp; 1.00000000000000 &amp; 1.00000000000000 &amp; 1.00000000000000 \\\\\n1.00000000000000 &amp; 1.00000000000000 &amp; -1.00000000000000 &amp; -1.00000000000000 \\\\\n1.00000000000000 &amp; -1.00000000000000 &amp; 1.00000000000000i &amp; -1.00000000000000i \\\\\n1.00000000000000 &amp; -1.00000000000000 &amp; -1.00000000000000i &amp; 1.00000000000000i\n\\end{array}\\right)$</div>"}︡{"done":true}
︠51a8caa4-f1c7-4066-93e3-f25b79fa922a︠
︡99f7ce5e-ba35-420f-bd73-27d9e24b9f81︡
︠57822384-7b2e-46a6-9ca5-b3e17c3ef673︠
︡400511ae-708b-4736-988e-0cbcdc659a4a︡
︠6f35fc09-531f-4627-b39c-35f5f96cdcffs︠
PinvCC=P.inverse();show(PinvCC)
︡e7bf0cda-eb36-4879-b52c-d373220a5aff︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n0.250000000000000 &amp; 0.250000000000000 &amp; 0.250000000000000 &amp; 0.250000000000000 \\\\\n0.250000000000000 &amp; 0.250000000000000 &amp; -0.250000000000000 &amp; -0.250000000000000 \\\\\n0.250000000000000 &amp; -0.250000000000000 &amp; -0.250000000000000i &amp; 0.250000000000000i \\\\\n0.250000000000000 &amp; -0.250000000000000 &amp; 0.250000000000000i &amp; -0.250000000000000i\n\\end{array}\\right)$</div>"}︡{"done":true}
︠b60df58c-5478-45bf-9858-a7d755476baas︠
show(Mf)
︡26336f9d-201a-46c6-a154-1c6eff210adf︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 2 &amp; 0 &amp; 1 \\\\\n2 &amp; 1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 &amp; 2 \\\\\n0 &amp; 1 &amp; 2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠38ad67f3-ae1b-4d3e-8eb7-fb730fe300e1s︠
Mf.eigenspaces_left()
︡0c7d4bda-c9a9-4ecb-baac-052218a003af︡{"stdout":"[\n(4, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[1 1 1 1]),\n(2, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[ 1  1 -1 -1]),\n(-1 - 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1 -1*I  1*I]),\n(-1 + 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1  1*I -1*I])\n]\n"}︡{"done":true}
︠3ce9b4f4-0599-4277-9f01-6c3ab2f7ce2c︠
︡107f09e2-a76e-44da-8613-ad03cef013bf︡
︠ae47e654-8d23-4141-ad11-704886749eb9s︠
Mf
︡7d0cedf8-b22a-4e79-bc8d-4e5c525e14ed︡{"stdout":"[1 2 0 1]\n[2 1 1 0]\n[1 0 1 2]\n[0 1 2 1]\n"}︡{"done":true}
︠c3478014-b7b8-43f5-9d9d-f08c965c5789︠
︡7a2b4ded-9238-401b-8ca0-1b7b8ea0b0ca︡
︠85076502-28f4-4adf-ac2b-b1ad284d35cas︠
Mf.eigenvectors_left()
︡d1473676-b5c0-4321-9935-a5ec62d0fdfe︡{"stdout":"[(4, [\n(1, 1, 1, 1)\n], 1), (2, [\n(1, 1, -1, -1)\n], 1), (-1 - 1*I, [(1, -1, -1*I, 1*I)], 1), (-1 + 1*I, [(1, -1, 1*I, -1*I)], 1)]\n"}︡{"done":true}
︠34474dc7-0471-4888-8743-4f5a60a6b684s︠
Mf.eigenvectors_right()
︡98956eed-891c-423d-80ae-fa8fed14e82e︡{"stdout":"[(4, [\n(1, 1, 1, 1)\n], 1), (2, [\n(1, 1, -1, -1)\n], 1), (-1 - 1*I, [(1, -1, 1*I, -1*I)], 1), (-1 + 1*I, [(1, -1, -1*I, 1*I)], 1)]\n"}︡{"done":true}
︠2be977ab-f8bc-4b8f-8f5d-968d4469cb6c︠
︡ee347037-cb0f-4a2c-bde1-f0cccfdcf2bb︡
︠35d2ef8b-a598-4a31-82e2-c36243285700s︠
Mer=Mf.eigenmatrix_right();show(Mer)
︡be989bb6-8ffc-49d3-b70c-bf189c70dded︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{rrrr}\n4 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 2 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; -1 - 1 \\sqrt{-1} &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; -1 + 1 \\sqrt{-1}\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 1 &amp; 1 &amp; 1 \\\\\n1 &amp; 1 &amp; -1 &amp; -1 \\\\\n1 &amp; -1 &amp; 1 \\sqrt{-1} &amp; -1 \\sqrt{-1} \\\\\n1 &amp; -1 &amp; -1 \\sqrt{-1} &amp; 1 \\sqrt{-1}\n\\end{array}\\right)$)</div>"}︡{"done":true}
︠c0cfc0c5-365d-4c3c-a43b-7a977f2935bb︠
︡ea63afb2-5474-4c61-83ee-d0ad3569c0c2︡
︠e108dff9-3397-4406-9a78-26d7f4db0d3as︠
show(Mf)
︡4034ce0e-497a-4b92-9d75-e388d08b0655︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 2 &amp; 0 &amp; 1 \\\\\n2 &amp; 1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 &amp; 2 \\\\\n0 &amp; 1 &amp; 2 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}
︠0623b08e-379c-4e18-a7d8-36a6b5b35747︠
︡ace0f31d-0cf1-4275-af7e-5836f66021cf︡
︠d0b52f2b-70e5-4b31-9ac1-ff64fa023b0ds︠
Mf.eigenspaces_left()
︡e874fb1b-a5d6-46c7-84ac-90470b489db7︡{"stdout":"[\n(4, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[1 1 1 1]),\n(2, Vector space of degree 4 and dimension 1 over Rational Field\nUser basis matrix:\n[ 1  1 -1 -1]),\n(-1 - 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1 -1*I  1*I]),\n(-1 + 1*I, Vector space of degree 4 and dimension 1 over Algebraic Field\nUser basis matrix:\n[   1   -1  1*I -1*I])\n]\n"}︡{"done":true}
︠d50d7700-d915-44a1-84c3-5cdd4941390e︠









