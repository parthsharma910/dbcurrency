package com.dbcurrency.dbcurrency;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DecimalFormat;
import java.util.List;
import java.util.Map;

@Controller
public class CurrencyConverterController {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CurrencyConverterController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/")
    public String showConverter(Model model) {
        List<Map<String, Object>> currencies = jdbcTemplate.queryForList(
                "SELECT e.country_code,e.currency_code, CONCAT(e.currency_name, ' (', e.currency_code, ')') AS currency_name " +
                        "FROM exchange_rates e "

        );

        model.addAttribute("currencies", currencies);
        return "converter";
    }



    @PostMapping("/convert")
    public String convertCurrency(@RequestParam("amount") double amount,
                                  @RequestParam("from") String fromCurrency,
                                  @RequestParam("to") String toCurrency,
                                  Model model) {

        if (fromCurrency.equals(toCurrency)) {
            model.addAttribute("error", "Please select different currencies.");
            List<Map<String, Object>> currencies = jdbcTemplate.queryForList("SELECT e.currency_code, CONCAT(e.currency_name, ' (', e.currency_code, ')') AS currency_name, e.country_code " +
                    "FROM exchange_rates e");
            model.addAttribute("currencies", currencies);
            return "converter";
        }

        Double fromRate = jdbcTemplate.queryForObject("SELECT conversion_factor FROM exchange_rates WHERE currency_code = ?", Double.class, fromCurrency);
        Double toRate = jdbcTemplate.queryForObject("SELECT conversion_factor FROM exchange_rates WHERE currency_code = ?", Double.class, toCurrency);

        double conversionFactor = toRate / fromRate;
        double convertedAmount = amount * conversionFactor;
        DecimalFormat decimalFormat = new DecimalFormat("#.##");
        convertedAmount = Double.parseDouble(decimalFormat.format(convertedAmount));


        model.addAttribute("amount", amount);
        model.addAttribute("fromCurrency", fromCurrency);
        model.addAttribute("toCurrency", toCurrency);
        model.addAttribute("convertedAmount", convertedAmount);
        List<Map<String, Object>> currencies = jdbcTemplate.queryForList("SELECT e.currency_code, CONCAT(e.currency_name, ' (', e.currency_code, ')') AS currency_name, e.country_code " +
                "FROM exchange_rates e");
        model.addAttribute("currencies", currencies);
        return "result";
    }
}