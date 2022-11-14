package com.breze.common.exception;


import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import io.jsonwebtoken.JwtException;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.nio.file.AccessDeniedException;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 全局异常处理机制，全局捕获 Controller 部分
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@RestControllerAdvice
public class GlobalException extends Throwable {

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(BussinessException.class)
    public Result handler(BussinessException e) {
        log.error("server服务器故障：----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(e.getErrorEnum(), e.getMessage());
    }

    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(JwtException.class)
    public Result handler(JwtException e) {
        log.error("Jwt出现异常：----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.IllegalOperation, e.getMessage());
    }

    @ResponseStatus(HttpStatus.FORBIDDEN)
    @ExceptionHandler(AccessDeniedException.class)
    public Result handler(AccessDeniedException e) {
        log.error("security权限不足：----------------{}", e.getMessage());
        return Result.createFailMessage(ErrorEnum.NoPermission, "权限不足");
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result handler(MethodArgumentNotValidException e) {
        log.error("实体校验异常：----------------{}", e.getMessage());
        BindingResult bindingResult = e.getBindingResult();
        ObjectError objectError = bindingResult.getAllErrors().stream().findFirst().get();
        return Result.createFailMessage(ErrorEnum.UnknowError, objectError.getDefaultMessage());
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(IllegalArgumentException.class)
    public Result handler(IllegalArgumentException e) {
        log.error("Assert异常：----------------{}", e.getMessage());
        return Result.createFailMessage(ErrorEnum.FindException, e.getMessage());
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(RuntimeException.class)
    public Result handler(RuntimeException e) {
        log.error("运行时异常：----------------{}", e.getMessage());
        return Result.createFailMessage(ErrorEnum.FindException, e.getMessage());
    }
}
