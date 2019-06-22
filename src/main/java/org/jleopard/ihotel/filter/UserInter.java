/**
 */

package org.jleopard.ihotel.filter;

import org.jleopard.ihotel.entity.User;
import org.jleopard.mvc.inter.Interceptor;
import org.jleopard.mvc.inter.InterceptorRegistration;
import org.jleopard.util.StringUtil;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserInter implements Interceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, InterceptorRegistration register) throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null && StringUtil.isNotEmpty(user.getId())){
          return true;
        }
        return false;
    }
}
