/*
 * The contents of this file are subject to the terms 
 * of the Common Development and Distribution License 
 * (the License).  You may not use this file except in
 * compliance with the License.
 * 
 * You can obtain a copy of the license at 
 * https://glassfish.dev.java.net/public/CDDLv1.0.html or
 * glassfish/bootstrap/legal/CDDLv1.0.txt.
 * See the License for the specific language governing 
 * permissions and limitations under the License.
 * 
 * When distributing Covered Code, include this CDDL 
 * Header Notice in each file and include the License file 
 * at glassfish/bootstrap/legal/CDDLv1.0.txt.  
 * If applicable, add the following below the CDDL Header, 
 * with the fields enclosed by brackets [] replaced by
 * you own identifying information: 
 * "Portions Copyrighted [year] [name of copyright owner]"
 * 
 * Copyright 2006 Sun Microsystems, Inc. All rights reserved.
 */
package com.easycodebox.common.jpa;

/**
 * Thrown by the persistence provider when {@link EntityManager#persist(Object) 
 * EntityManager.persist(Object)} is called and the entity
 * already exists. The current transaction, if one is active, 
 * will be marked for rollback.
 *
 * @see com.easycodebox.common.jpa.EntityManager#persist(Object)
 *
 * @since Java Persistence 1.0
 */
public class EntityExistsException extends PersistenceException {
	
	private static final long serialVersionUID = -1857206574436912289L;

		/** 
         * Constructs a new <code>EntityExistsException</code> exception 
         * with <code>null</code> as its detail message.
         */
	public EntityExistsException() {
		super();
	}

        /** 
         * Constructs a new <code>EntityExistsException</code> exception 
         * with the specified detail message.
         * @param   message   the detail message.
         */
	public EntityExistsException(String message) {
		super(message);
	}

        /** 
         * Constructs a new <code>EntityExistsException</code> exception 
         * with the specified detail message and cause.
         * @param   message   the detail message.
         * @param   cause     the cause.
         */
	public EntityExistsException(String message, Throwable cause) {
		super(message, cause);
	}
	
        /** 
         * Constructs a new <code>EntityExistsException</code> exception 
         * with the specified cause.
         * @param   cause     the cause.
         */
	public EntityExistsException(Throwable cause) {
		super(cause);
	}
};
