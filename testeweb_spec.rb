describe "Teste Web", :primeiro do

  before (:each) do
    page.current_window.resize_to(1200,800)
  end
  
  it "Criar Lista" do

    #Acessar Site
      visit "https://login.live.com/oauth20_authorize.srf?response_type=token&client_id=000000004C18365E&redirect_uri=https%3A%2F%2Fto-do.live.com%2Ftasks%2Fauth%2Fcallback&scope=https://graph.microsoft.com/User.Read&state=eyJ0b2tlblR5cGUiOiJncmFwaFRva2VuIiwiZmxvd1R5cGUiOiJtc2EifQ==&aadredir=1"
      
    #login
      fill_in 'loginfmt', with: 'testesweb23@outlook.com'
      click_button 'idSIButton9'
      fill_in 'passwd', with: '@TESTES@'
      click_button 'idSIButton9'  

    #Criar Lista Livros
      find('input[id=baseAddInput-addList]').set 'Livros'
      find('#baseAddInput-addList').send_keys :enter
        sleep 5

    #Criar Livro 1
      fill_in 'baseAddInput-addTask', with: 'A Arte da Guerra'
      find('#baseAddInput-addTask').send_keys :enter
      sleep 5

    #Criar Livro 2
      fill_in 'baseAddInput-addTask', with: 'A Cauda Longa'
      find('#baseAddInput-addTask').send_keys :enter
      sleep 5

    #Criar Livro 3
      fill_in 'baseAddInput-addTask', with: 'A Torre Negra'
      find('#baseAddInput-addTask').send_keys :enter 
        sleep 5

    #Clicar na TORRE NEGRA
        find('button[class=taskItem-titleWrapper]', text: " Torre Negra").click
        sleep 5

    #Check importancia
        find(:xpath, ("//body/div[@id='root']/div[@id='container']/div[@id='app']/span[@id='centerColumn']/div[@id='main']/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/span[1]/i[1]") ).click
        sleep 5
    
    #Criar Lista Meus Livros
        find('input[id=baseAddInput-addList]').set 'Meus Livros'
        find('#baseAddInput-addList').send_keys :enter
    #Criar Livro 4
        fill_in 'baseAddInput-addTask', with: 'O Nevoeiro'
        find('#baseAddInput-addTask').send_keys :enter 
        sleep 5
    #Criar Livro 5
        fill_in 'baseAddInput-addTask', with: 'O Hobbit'
        find('#baseAddInput-addTask').send_keys :enter 
        sleep 5
    #Criar Livro 6
        fill_in 'baseAddInput-addTask', with: 'O Milagre'
        find('#baseAddInput-addTask').send_keys :enter 
        sleep 5
    #Criar Livro 7
        fill_in 'baseAddInput-addTask', with: 'Código de Conduta'
        find('#baseAddInput-addTask').send_keys :enter 
        sleep 5

        fill_in 'baseAddInput-addTask', with: 'As Cronicas de Narnia'
        find('#baseAddInput-addTask').send_keys :enter 
        sleep 5



    #Marcar como Importante
      find('button[class=taskItem-titleWrapper]', text: " Milagre").click
      find(:xpath, ("/html[1]/body[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/span[1]/i[1]") ).click
      sleep 5

      find('button[class=taskItem-titleWrapper]', text: " Hobbit").click
      find(:xpath, ("/html[1]/body[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/span[1]/i[1]") ).click
      sleep 5

      find('button[class=taskItem-titleWrapper]', text: " Nevoeiro").click
      find(:xpath, ("/html[1]/body[1]/div[1]/div[1]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/span[1]/i[1]") ).click
      sleep 5

      

    end


end
