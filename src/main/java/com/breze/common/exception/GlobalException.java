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
 * @Description 全局异常处理机制, 对异常进行捕获返回
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@RestControllerAdvice
public class GlobalException extends Throwable {

    private static final long serialVersionUID = -3332727555745749667L;

    /**
     * 业务异常拦截
     *
     * @throws BusinessException 业务异常
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(BusinessException.class)
    public Result<Object> handler(BusinessException e) {
        log.error("[server服务器故障]:----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(e.getErrorEnum(), e.getMessage());
    }

    /**
     * JWT认证异常拦截
     *
     * @throws JwtException JWT异常
     */
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(BrezeJwtException.class)
    public Result<Object> handler(BrezeJwtException e) {
        log.error("[Jwt出现异常]:----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.IncorrectCredentials, e.getMessage());
    }

    /**
     * 权限异常拦截
     *
     * @throws AccessDeniedException 权限异常
     */
    @ResponseStatus(HttpStatus.FORBIDDEN)
    @ExceptionHandler(AccessDeniedException.class)
    public Result<Object> handler(AccessDeniedException e) {
        log.error("Security权限不足异常:----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.NoPermission, ErrorEnum.NoPermission.getErrorName());
    }

    /**
     * 方法参数校验异常拦截
     *
     * @throws MethodArgumentNotValidException 方法参数校验异常
     */

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<Object> handler(MethodArgumentNotValidException e) {
        log.error("方法参数校验异常校验异常:----------------{}", e.getMessage());
        BindingResult bindingResult = e.getBindingResult();
        ObjectError objectError = bindingResult.getAllErrors().stream().findFirst().get();
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.UnknownError, objectError.getDefaultMessage());
    }

    /**
     * 非法参数异常拦截
     *
     * @throws IllegalArgumentException 非法参数异常
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(IllegalArgumentException.class)
    public Result<Object> handler(IllegalArgumentException e) {
        log.error("非法参数异常:----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.FindException, e.getMessage());
    }

    /**
     * 运行时异常拦截
     *
     * @throws RuntimeException 运行时异常
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(RuntimeException.class)
    public Result<Object> handler(RuntimeException e) {
        log.error("运行时异常:----------------{}", e.getMessage());
        e.printStackTrace();
        return Result.createFailMessage(ErrorEnum.FindException, e.getMessage());
    }
}
