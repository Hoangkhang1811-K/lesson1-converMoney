package codegym.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CurrencyController {


    @GetMapping("/")
    public String showForm() {
        return "index";
    }


    @PostMapping("/convert")
    public String convertMoney(@RequestParam(value = "usd", defaultValue = "0") double usd,
                               @RequestParam(value = "rate", defaultValue = "25000") double rate,
                               Model model) {


        double vnd = usd * rate;

        // Đưa dữ liệu sang trang result.jsp để hiển thị
        model.addAttribute("usd", usd);
        model.addAttribute("rate", rate);
        model.addAttribute("vnd", vnd);

        return "result"; // Trả về trang result.jsp
    }
}
