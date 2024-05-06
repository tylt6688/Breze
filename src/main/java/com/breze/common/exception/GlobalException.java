package com.breze.common.exception;


import com.breze.common.enums.ErrorEnum;
import com.breze.common.result.Result;
import io.jsonwebtoken.JwtException;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingPathVariableException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import javax.servlet.http.HttpServletRequest;
import java.nio.file.AccessDeniedException;
import java.util.Objects;

/**
 * @Author tylt6688
 * @Date 2022/2/5 11:57
 * @Description 全局异常处理机制, 对异常进行捕获返回
 * @Copyright(c) 2022 , 青枫网络工作室
 */
@Log4j2
@RestControllerAdvice
public class GlobalException extends Exception {

    private static final long serialVersionUID = -999999999L;

    /**
     * 业务异常拦截
     *
     * @throws BusinessException 业务异常
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(BusinessException.class)
    public Result<Object> handler(BusinessException e) {
        log.error("[业务异常]:----------------{}", e.getMessage());
        return Result.createFailMessage(e.getErrorEnum(), e.getMessage());
    }

    /**
     * 认证异常拦截
     *
     * @throws JwtException JWT异常
     */
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(BrezeJwtException.class)
    public Result<Object> handler(BrezeJwtException e) {
        log.error("[Jwt异常]------------", e);
        return Result.createFailMessage(ErrorEnum.INCORRECT_CREDENTIALS, e.getMessage());
    }

    /**
     * 权限异常拦截
     */
    @ResponseStatus(HttpStatus.FORBIDDEN)
    @ExceptionHandler(AccessDeniedException.class)
    public Result<Object> handler(AccessDeniedException e) {
        log.error("[Security权限异常]------------", e);
        return Result.createFailMessage(ErrorEnum.NO_PERMISSION, ErrorEnum.NO_PERMISSION.getErrorName());
    }

    /**
     * 自定义Validation验证异常
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(BindException.class)
    public Result<Object> handler(BindException e) {
        log.error("[Validation验证异常]------------'{}'", e.getMessage(), e);
        String message = e.getAllErrors().get(0).getDefaultMessage();
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, message);
    }

    /**
     * 请求路径中缺少必需的路径变量
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MissingPathVariableException.class)
    public Result<Object> handler(MissingPathVariableException e, HttpServletRequest request) {
        String requestURI = request.getRequestURI();
        log.error("[路径变量异常]请求路径中缺少必需的路径变量------------'{}',发生路径变量异常.", requestURI, e);
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, String.format("请求路径中缺少必需的路径变量[%s]", e.getVariableName()));
    }

    /**
     * 请求参数类型不匹配
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public Result<Object> handler(MethodArgumentTypeMismatchException e, HttpServletRequest request) {
        String requestURI = request.getRequestURI();
        log.error("[参数类型异常]请求参数类型不匹配------------'{}',发生参数类型异常.", requestURI, e);
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, String.format("请求参数类型不匹配，参数[%s]要求类型为：'%s'，但输入值为：'%s'", e.getName(), e.getRequiredType().getName(), e.getValue()));
    }

    /**
     * 非法参数异常拦截
     *
     * @throws IllegalArgumentException 非法参数异常
     */
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(IllegalArgumentException.class)
    public Result<Object> handler(IllegalArgumentException e, HttpServletRequest request) {
        String requestURI = request.getRequestURI();
        log.error("[非法参数异常]------------请求地址'{}',发生非法参数异常.", requestURI, e);
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, e.getMessage());
    }


    /**
     * 方法参数校验异常拦截
     */

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Result<Object> handler(MethodArgumentNotValidException e) {
        log.error("[方法参数校验异常校验异常]------------", e);
        String message = Objects.requireNonNull(e.getBindingResult().getFieldError()).getDefaultMessage();
        return Result.createFailMessage(ErrorEnum.UNKNOWN_ERROR, message);
    }


    /**
     * 运行时异常拦截
     *
     * @throws RuntimeException 运行时异常
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(RuntimeException.class)
    public Result<Object> handler(RuntimeException e) {
        log.error("[运行时异常]------------", e);
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, e.getMessage());
    }

    /**
     * 系统异常
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public Result<Object> handleException(Exception e, HttpServletRequest request) {
        String requestURI = request.getRequestURI();
        log.error("[系统异常]------------请求地址'{}',发生系统异常.", requestURI, e);
        return Result.createFailMessage(ErrorEnum.FIND_EXCEPTION, e.getMessage());
    }
}
