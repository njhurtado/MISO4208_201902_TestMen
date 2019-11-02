require 'calabash-android/calabash_steps'

Then /^I press FloatingActionButton id "([^\"]*)"$/ do |id|
    touch("android.support.design.widget.FloatingActionButton id:'#{id}'")    
end



Then /^I press number (\d+) on keyboard$/ do |number|
    
    number.to_s.split('').each { |item|
        press_button('KEYCODE_'+item)
    }   
    press_button('KEYCODE_ENTER') 
end


