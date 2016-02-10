# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.create(email: "leo@email.com", first_name: "Leo", last_name: "Tolstoy", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/leo.jpg", bio: "Count Lev Nikolayevich Tolstoy (/ˈtoʊlstɔɪ, ˈtɒl-/;[1] Russian: Лев Никола́евич Толсто́й, pronounced [lʲɛf nʲɪkɐˈlaɪvʲɪtɕ tɐlˈstoj; 9 September [O.S. 28 August] 1828 – 20 November [O.S. 7 November] 1910), usually referred to in English as Leo Tolstoy, was a Russian writer who is regarded as one of the greatest authors of all time. Born to an aristocratic Russian family in 1828, he is best known for the novels War and Peace (1869) and Anna Karenina (1877), often cited as pinnacles of realist fiction. He first achieved literary acclaim in his twenties with his semi-autobiographical trilogy, Childhood, Boyhood, and Youth (1852–1856), and Sevastopol Sketches (1855), based upon his experiences in the Crimean War. Tolstoy's fiction includes dozens of short stories and several novellas such as The Death of Ivan Ilyich, Family Happiness, and Hadji Murad. He also wrote plays and numerous philosophical essays.")

User.create(email: "miguel@email.com", first_name: "Miguel", last_name: "de Cervantes Saavedra", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/mig.jpg", bio: "Miguel de Cervantes[b] (/sərˈvɒnteɪz/ or /sərˈvæntiːz/;[2] Spanish: [miˈɣel de θerˈbantes saˈβeðɾa]; 29 September 1547 (assumed) – 22 April 1616),[3] was a Spanish novelist, poet, and playwright. His major work, Don Quixote, considered to be the first modern European novel,[4] is a classic of Western literature, and is regarded amongst the best works of fiction ever written.[5] His influence on the Spanish language has been so great that the language is often called la lengua de Cervantes ('the language of Cervantes').[6] He was dubbed El Príncipe de los Ingenios ('The Prince of Wits').[7]")

User.create(email: "mark@email.com", first_name: "Mark", last_name: "Twain", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/mark.jpg", bio: "Samuel Langhorne Clemens (November 30, 1835 – April 21, 1910),[1] better known by his pen name Mark Twain, was an American author and humorist. He wrote The Adventures of Tom Sawyer (1876) and its sequel, Adventures of Huckleberry Finn (1885),[2] the latter often called 'The Great American Novel'. Twain grew up in Hannibal, Missouri, which provided the setting for Huckleberry Finn and Tom Sawyer. After an apprenticeship with a printer, he worked as a typesetter and contributed articles to the newspaper of his older brother, Orion Clemens. He later became a riverboat pilot on the Mississippi River before heading west to join Orion in Nevada. He referred humorously to his singular lack of success at mining, turning to journalism for the Virginia City Territorial Enterprise.[3] In 1865, his humorous story, 'The Celebrated Jumping Frog of Calaveras County', was published, based on a story he heard at Angels Hotel in Angels Camp, California, where he had spent some time as a miner. The short story brought international attention, and was even translated into classic Greek.[4] His wit and satire, in prose and in speech, earned praise from critics and peers, and he was a friend to presidents, artists, industrialists, and European royalty")

User.create(email: "fyodor@email.com", first_name: "Fyodor", last_name: "Dostoyevsky", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/fyodor.jpg", bio: "Fyodor Mikhailovich Dostoyevsky[a] (/ˌdɒstəˈjɛfski, ˌdʌs-/;[1] Russian: Фёдор Миха́йлович Достое́вский; IPA: [ˈfʲɵdər mʲɪˈxajləvʲɪtɕ dəstɐˈjɛfskʲɪj]; 11 November 1821 – 9 February 1881),[b] sometimes transliterated Dostoevsky, was a Russian novelist, short story writer, essayist, journalist and philosopher. Dostoyevsky's literary works explore human psychology in the troubled political, social, and spiritual atmosphere of 19th-century Russia. Many of his works are marked by a preoccupation with Christianity, explored through the prism of the individual confronted with life's hardships and beauty.")

User.create(email: "frank@email.com", first_name: "Frank", last_name: "Herbert", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/frank.jpg", bio: "Frank Patrick Herbert, Jr. (October 8, 1920 – February 11, 1986) was an American science fiction writer best known for the novel Dune and its five sequels. Though he became famous for science fiction, he was also a newspaper journalist, photographer, short story writer, book reviewer, ecological consultant and lecturer. The Dune saga, set in the distant future and taking place over millennia, deals with complex themes such as human survival and evolution, ecology, and the intersection of religion, politics and power. Dune itself is the best-selling science fiction novel of all time[1] and the series is widely considered to be among the classics of the genre.")

User.create(email: "jane@email.com", first_name: "Jane", last_name: "Austen", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/jabe.jpg", bio: "Jane Austen (/ˈdʒeɪn ˈɒstɪn/; 16 December 1775 – 18 July 1817) was an English novelist whose works of romantic fiction, set among the landed gentry, earned her a place as one of the most widely read writers in English literature. Her realism, biting irony and social commentary as well as her acclaimed plots have gained her historical importance among scholars and critics.[1] Austen lived her entire life as part of a close-knit family located on the lower fringes of the English landed gentry.[2] She was educated primarily by her father and older brothers as well as through her own reading. The steadfast support of her family was critical to her development as a professional writer.[3] From her teenage years into her thirties she experimented with various literary forms, including an epistolary novel which she then abandoned, wrote and extensively revised three major novels and began a fourth.[B] From 1811 until 1816, with the release of Sense and Sensibility (1811), Pride and Prejudice (1813), Mansfield Park (1814) and Emma (1815), she achieved success as a published writer. She wrote two additional novels, Northanger Abbey and Persuasion, both published posthumously in 1818, and began a third, which was eventually titled Sanditon, but died before completing it.")

User.create(email: "oscar@email.com", first_name: "Oscar", last_name: "Wilde", password_digest:"$2a$10$CtocHKpSJreHwG/UB062C.4jvD6l8eTX1VfHtysEmh/u.vLk57ecq", image_path: "/media/img/oscar.jpg", bio: "Oscar Fingal O'Flahertie Wills Wilde (16 October 1854 – 30 November 1900) was an Irish playwright, novelist, essayist, and poet. After writing in different forms throughout the 1880s, he became one of London's most popular playwrights in the early 1890s. He is remembered for his epigrams, his novel The Picture of Dorian Gray, his plays, as well as the circumstances of his imprisonment and early death.")

puts ("Added users")

Book.create(title: "War and Peace", image_path: "/media/img/warandpeace.jpg",  summary: "War and Peace opens in the Russian city of St. Petersburg in 1805, as Napoleon’s conquest of western Europe is just beginning to stir fears in Russia. ... Nicholas’s army career continues, and he witnesses the great peace between Napoleon and Tsar Alexander.", user_id: 1) 
Book.create(title: "Don Quixote", image_path: "/media/img/donquixote.jpg", summary: "The story follows the adventures of a nameless hidalgo who reads so many chivalric romances that he loses his sanity and decides to set out to revive chivalry, undo wrongs, and bring justice to the world, under the name Don Quixote. He recruits a simple farmer, Sancho Panza, as his squire, who often employs a unique, earthy wit in dealing with Don Quixote's rhetorical orations on antiquated knighthood. ", user_id: 2)
Book.create(title: "A Conneticut Yankee in King Arthur's Court", image_path: "/media/img/yankee.jpg", summary: "A Yankee engineer from Connecticut is accidentally transported back in time to the court of King Arthur, where he fools the inhabitants of that time into thinking he is a magician—and soon uses his knowledge of modern technology to become a magician in earnest, stunning the English of the Early Middle Ages with such feats as demolitions, fireworks and the shoring up of a holy well. He attempts to modernize the past, but in the end he is unable to prevent the death of Arthur and an interdict against him by the Catholic Church of the time, which grows fearful of his power.", user_id: 3)
Book.create(title: "Dune", image_path: "/media/img/dune.jpg", summary: "Set in the distant future amidst a feudal interstellar society in which noble houses, in control of individual planets, owe allegiance to the Padishah Emperor, Dune tells the story of young Paul Atreides, whose noble family accepts the stewardship of the desert planet Arrakis. As this planet is the only source of the spice melange, the most important and valuable substance in the universe, control of Arrakis is a coveted — and dangerous — undertaking. The story explores the multi-layered interactions of politics, religion, ecology, technology, and human emotion, as the forces of the empire confront each other in a struggle for the control of Arrakis and its spice", user_id:5)
Book.create(title: "Crime and Punishment", image_path: "/media/img/crimeandpunishment.png", summary: "Crime and Punishment focuses on the mental anguish and moral dilemmas of Rodion Raskolnikov, an impoverished ex-student in St. Petersburg who formulates and executes a plan to kill an unscrupulous pawnbroker for her cash. Raskolnikov, in attempts to defend his actions, argues that with the pawnbroker's money he can perform good deeds to counterbalance the crime, while ridding the world of a vermin. He also commits the murder to test a theory of his that dictates some people are naturally capable of such actions, and even have the right to perform them. Several times throughout the novel, Raskolnikov compares himself with Napoleon Bonaparte and shares his belief that murder is permissible in pursuit of a higher purpose.", user_id:4)
Book.create(title: "Pride and Prejudice", image_path: "/media/img/pride.jpg", summary: "The novel centres on Elizabeth Bennet, the second of the five daughters of a landed country gentleman. Elizabeth's father, Mr Bennet, is a bookish man and somewhat neglectful of his responsibilities. In contrast Elizabeth's mother, Mrs Bennet, a woman who lacks social graces, is primarily concerned with finding suitable husbands for her five daughters. Jane Bennet, the eldest daughter, is distinguished by her kindness and beauty; Elizabeth Bennet shares her father's keen wit and occasionally sarcastic outlook; Mary is not pretty but is studious, devout and musical albeit lacking in taste; Catherine, sometimes called Kitty, the fourth sister, follows where her younger sister leads while Lydia is flirtatious and lacks maturity.", user_id:6)
Book.create(title: "The Picture of Dorian Gray", image_path: "/media/img/dorian.jpg", summary: "Dorian Gray is the subject of a full-length portrait in oil by Basil Hallward, an artist who is impressed and infatuated by Dorian's beauty; he believes that Dorian’s beauty is responsible for the new mode in his art as a painter. Through Basil, Dorian meets Lord Henry Wotton, and he soon is enthralled by the aristocrat's hedonistic worldview: that beauty and sensual fulfilment are the only things worth pursuing in life.Newly understanding that his beauty will fade, Dorian expresses the desire to sell his soul, to ensure that the picture, rather than he, will age and fade. The wish is granted, and Dorian pursues a libertine life of varied and amoral experiences, while staying young and beautiful; all the while his portrait ages and records every soul-corrupting sin.", user_id:7)





puts ("Added books")

