After('@logout') do
    @nav.sair
    wait_until_css('.swal2-modal')
end

def wait_until_css(element, time_out = Capybara.default_max_wait_time)
    found = true 
    while found = true 
        sleep 1
        raise Timeout::Error, 'Time out of wait until css' + element if time_out.zero?
        found = page.has_css?(element)
        time_out -= 1
    end

end