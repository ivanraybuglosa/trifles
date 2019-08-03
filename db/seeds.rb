# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.create!(name:         "Admin Account",
    email:                 "admin@gmail.com",
    password:              "password",
    password_confirmation: "password",
    admin: true)

User.create!(name:         "Ivan Ray Buglosa",
    email:                 "ivanraybuglosa@gmail.com",
    password:              "password",
    password_confirmation: "password",
    admin: true)



50.times do 
    User.create!(
        name: Faker::Name.name,
        email: Faker::Internet.unique.email,
        password: "password",
        password_confirmation: "password"
    )
end




cat1 = Category.create!(title: "English to Italian", description: "Basic 10 to Italian")


cat1params = { 
    :word1 => {
        :content => "Sad",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Triste",
                :correct => true
            },
            1 => {
                :content => "Contento",
                :correct => false
            },
            2 => {
                :content => "Gioioso",
                :correct => false
            }
        }
    }, 
    :word2 => {
        :content => "Happy",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Beato",
                :correct => false
            },
            1 => {
                :content => "Contento",
                :correct => true
            },
            2 => {
                :content => "Propizio",
                :correct => false
            }
        }
    },
    :word3 => {
        :content => "Breezy",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Bagnato",
                :correct => false
            },
            1 => {
                :content => "Freddo",
                :correct => false
            },
            2 => {
                :content => "Fresco",
                :correct => true
            }
        }
    }, 
    :word4 => {
        :content => "Expect",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Aspettarsi",
                :correct => true
            },
            1 => {
                :content => "Propizio",
                :correct => false
            },
            2 => {
                :content => "Fresco",
                :correct => false
            }
        }
    },
    :word5 => {
        :content => "Ordinary",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Aspettarsi",
                :correct => false
            },
            1 => {
                :content => "Fresco",
                :correct => false
            },
            2 => {
                :content => "Ordinario",
                :correct => true
            }
        }
    },
    :word6 => {
        :content => "In Love",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Innamorato",
                :correct => true
            },
            1 => {
                :content => "Parla inglese?",
                :correct => false
            },
            2 => {
                :content => "Buona notte",
                :correct => false
            }
        }
    },
    :word7 => {
        :content => "How are you?",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Non capisco.",
                :correct => false
            },
            1 => {
                :content => "Buona giornata!",
                :correct => false
            },
            2 => {
                :content => "Come sta?",
                :correct => true
            }
        }
    },
    :word8 => {
        :content => "Could you speak more slowly?",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Può parlare lentamente?",
                :correct => true
            },
            1 => {
                :content => "Scusi, che cosa ha detto?",
                :correct => false
            },
            2 => {
                :content => "Sto bene, grazie",
                :correct => false
            }
        }
    },
    :word9 => {
        :content => "My name is Martin",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Mi chiamo Martin",
                :correct => true
            },
            1 => {
                :content => "Sto bene, grazie Martin",
                :correct => false
            },
            2 => {
                :content => "Parla inglese? Martin",
                :correct => false
            }
        }
    },
    :word10 => {
        :content => "Excuse me",
        :category_id => cat1.id,
        :choices_attributes => {
            0 => {
                :content => "Grazie",
                :correct => false
            },
            1 => {
                :content => "Mi scusi",
                :correct => true
            },
            2 => {
                :content => "No, mi dispiace",
                :correct => false
            }
        }
    }
}

Word.create!(cat1params[:word1])
Word.create!(cat1params[:word2])
Word.create!(cat1params[:word3])
Word.create!(cat1params[:word4])
Word.create!(cat1params[:word5])
Word.create!(cat1params[:word6])
Word.create!(cat1params[:word7])
Word.create!(cat1params[:word8])
Word.create!(cat1params[:word9])
Word.create!(cat1params[:word10])



cat2 = Category.create!(title: "English to Japanese", description: "Basic 10 to Japanese")


cat2params = { 
    :word1 => {
        :content => "Hello",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Konnichiwa",
                :correct => true
            },
            1 => {
                :content => "Ii Tenki desu ne",
                :correct => false
            },
            2 => {
                :content => "Genki desu ka",
                :correct => false
            }
        }
    }, 
    :word2 => {
        :content => "How are you?",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Konbanwa",
                :correct => false
            },
            1 => {
                :content => "Genki desu ka",
                :correct => true
            },
            2 => {
                :content => "Hisashiburi",
                :correct => false
            }
        }
    },
    :word3 => {
        :content => "Hisashiburi",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Long Time, No See!",
                :correct => true
            },
            1 => {
                :content => "Ii Tenki desu ne",
                :correct => false
            },
            2 => {
                :content => "Konbanwa",
                :correct => false
            }
        }
    }, 
    :word4 => {
        :content => "Goodnight",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Oyasumi Nasai",
                :correct => true
            },
            1 => {
                :content => "Ja Mata",
                :correct => false
            },
            2 => {
                :content => "Tadaima",
                :correct => false
            }
        }
    },
    :word5 => {
        :content => "I’m Home",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Okaeri Nasai",
                :correct => false
            },
            1 => {
                :content => "Shitsurei Shimasu",
                :correct => false
            },
            2 => {
                :content => "Tadaima",
                :correct => true
            }
        }
    },
    :word6 => {
        :content => "In Love",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Innamorato",
                :correct => true
            },
            1 => {
                :content => "Parla inglese?",
                :correct => false
            },
            2 => {
                :content => "Buona notte",
                :correct => false
            }
        }
    },
    :word7 => {
        :content => "You Must Be Tired",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Ittekimasu",
                :correct => false
            },
            1 => {
                :content => "Shitsurei Shimasu",
                :correct => false
            },
            2 => {
                :content => "Otsukaresama Deshita",
                :correct => true
            }
        }
    },
    :word8 => {
        :content => "I’m Going",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Ittekimasu",
                :correct => true
            },
            1 => {
                :content => "Otsukaresama Deshita",
                :correct => false
            },
            2 => {
                :content => "Itterasshai",
                :correct => false
            }
        }
    },
    :word9 => {
        :content => "Go and Come Back",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Itterasshai",
                :correct => true
            },
            1 => {
                :content => "Sto bene, grazie Martin",
                :correct => false
            },
            2 => {
                :content => "Parla inglese? Martin",
                :correct => false
            }
        }
    },
    :word10 => {
        :content => "Thank You",
        :category_id => cat2.id,
        :choices_attributes => {
            0 => {
                :content => "Gomen Nasai",
                :correct => false
            },
            1 => {
                :content => "Arigatou Gozaimasu",
                :correct => true
            },
            2 => {
                :content => "Ii desu yo",
                :correct => false
            }
        }
    }
}

Word.create!(cat2params[:word1])
Word.create!(cat2params[:word2])
Word.create!(cat2params[:word3])
Word.create!(cat2params[:word4])
Word.create!(cat2params[:word5])
Word.create!(cat2params[:word6])
Word.create!(cat2params[:word7])
Word.create!(cat2params[:word8])
Word.create!(cat2params[:word9])
Word.create!(cat2params[:word10])


cat3 = Category.create!(title: "English to Spanish", description: "Basic 10 to Spanish")


cat3params = { 
    :word1 => {
        :content => "Good morning",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Buenos días",
                :correct => true
            },
            1 => {
                :content => "Buenas tardes",
                :correct => false
            },
            2 => {
                :content => "Buenas noches",
                :correct => false
            }
        }
    }, 
    :word2 => {
        :content => "Good afternoon",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Buenas noches",
                :correct => false
            },
            1 => {
                :content => "Buenas tardes",
                :correct => true
            },
            2 => {
                :content => "Buenos días",
                :correct => false
            }
        }
    },
    :word3 => {
        :content => "Hello, my name is John.",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Hola, me llamo Juan.",
                :correct => true
            },
            1 => {
                :content => "Estoy bien Juan",
                :correct => false
            },
            2 => {
                :content => "Juan Por favor.",
                :correct => false
            }
        }
    }, 
    :word4 => {
        :content => "I am fine",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Estoy bien",
                :correct => true
            },
            1 => {
                :content => "Salud",
                :correct => false
            },
            2 => {
                :content => "De nada",
                :correct => false
            }
        }
    },
    :word5 => {
        :content => "You are welcome",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Yo no comprendo",
                :correct => false
            },
            1 => {
                :content => "Por favor, habla mas despacio",
                :correct => false
            },
            2 => {
                :content => "De nada",
                :correct => true
            }
        }
    },
    :word6 => {
        :content => "Would you speak slower, please.",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Por favor, habla mas despacio",
                :correct => true
            },
            1 => {
                :content => "Salud",
                :correct => false
            },
            2 => {
                :content => "Buenas noches",
                :correct => false
            }
        }
    },
    :word7 => {
        :content => "I am lost. Where is the restroom?",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Cómo se dice maybe en Español?",
                :correct => false
            },
            1 => {
                :content => "Quiere comprarlo usted?",
                :correct => false
            },
            2 => {
                :content => "Estoy perdido. ¿Dónde está el baño?",
                :correct => true
            }
        }
    },
    :word8 => {
        :content => "What is your name?",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Cómo está usted?",
                :correct => true
            },
            1 => {
                :content => "Mucho gusto",
                :correct => false
            },
            2 => {
                :content => "Lo siento",
                :correct => false
            }
        }
    },
    :word9 => {
        :content => "Why?",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Por què?",
                :correct => true
            },
            1 => {
                :content => "Quièn?",
                :correct => false
            },
            2 => {
                :content => "Lo siento",
                :correct => false
            }
        }
    },
    :word10 => {
        :content => "How are you?",
        :category_id => cat3.id,
        :choices_attributes => {
            0 => {
                :content => "Estoy bien",
                :correct => false
            },
            1 => {
                :content => "Cómo está usted?",
                :correct => true
            },
            2 => {
                :content => "Cómo se llama usted?",
                :correct => false
            }
        }
    }
}

Word.create!(cat3params[:word1])
Word.create!(cat3params[:word2])
Word.create!(cat3params[:word3])
Word.create!(cat3params[:word4])
Word.create!(cat3params[:word5])
Word.create!(cat3params[:word6])
Word.create!(cat3params[:word7])
Word.create!(cat3params[:word8])
Word.create!(cat3params[:word9])
Word.create!(cat3params[:word10])