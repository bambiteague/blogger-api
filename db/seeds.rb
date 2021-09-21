a1 = Author.create(name: "John Smith")
a2 = Author.create(name: "Susan Strong")
a3 = Author.create(name: "Lark Greenwood")

p1 = Post.new(title: "Know Your National Parks", content: "My biggest adventure yet was to bring you all these park tips and tricks! blah blah blah...")
p1.author = a1
p1.save
p2 = Post.new(title: "How To Get A Man In 10 Days", content: "Get you a man so fast with my tips!")
p2.author = a2
p2.save
p3 = Post.new(title: "Gender and Fashion pt. I", content: "My next post will have the pt. II - keep your eyes peeled!")
p3.author = a3
p3.save
