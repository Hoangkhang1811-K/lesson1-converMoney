package codegym.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class DictionaryController {


    @GetMapping("/dictionary")
    public String showDictionaryForm() {
        return "dictionary";
    }

    @PostMapping("/dictionary")
    public String searchWord(@RequestParam("keyword") String keyword, Model model) {
        // Tạo một từ điển giả lập (dùng Map)
        Map<String, String> dic = new HashMap<>();
        dic.put("hello", "Xin chào");
        dic.put("apple", "Quả táo");
        dic.put("book", "Quyển sách");
        dic.put("computer", "Máy tính");


        String result = dic.get(keyword.toLowerCase());


        if (result != null) {
            model.addAttribute("result", result);
        } else {
            model.addAttribute("result", "Không tìm thấy từ này trong từ điển!");
        }


        model.addAttribute("keyword", keyword);


        return "dictionary";
    }
}
