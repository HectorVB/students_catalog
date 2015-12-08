require "rails_helper"

feature "Create student" do
	scenario "successfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "person@email.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

			click_on "Sign up"
		
		click_on "Crear nuevo estudiante"
		
			fill_in "Nombre(s)", with: "Jimena"
			fill_in "Apellidos", with: "Vazquez"
			fill_in "Número de control", with: "11460319"
			fill_in "Semestre", with: "9"

			click_on "Guardar"

			expect(current_path).to eq "/"
			expect(page).to have_content "Student was successfully created."
		
	end
		scenario "unsuccessfully" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "person@email.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

			click_on "Sign up"
		
		click_on "Crear nuevo estudiante"
		
			
			click_on "Guardar"

			expect(current_path).to eq "/students"
			expect(page).to have_content "First name can't be blank"
    		expect(page).to have_content "Last name can't be blank"
    		expect(page).to have_content "Control number can't be blank"
    		expect(page).to have_content "Semester can't be blank"
		
	end
	scenario "Dato invalido" do
		visit "/teachers/sign_in"

		click_link "Sign up"

			fill_in "Email", with: "person@email.com"
			fill_in "Password", with: "12345678"
			fill_in "Password confirmation", with: "12345678"

			click_on "Sign up"
		
		click_on "Crear nuevo estudiante"
			
			fill_in "Nombre(s)", with: "Victor"
			fill_in "Apellidos", with: "Guerrero"
			fill_in "Número de control", with: "14460119"
			fill_in "Semestre", with: "8"
		
			click_on "Guardar"

			expect(current_path).to eq "/students/new"
#			expect(page.find('.alert')).to have_content 'Intoduzca un número'     		
		sleep 3
	end
end