/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.oak_yoga_studio.dao;

import com.oak_yoga_studio.domain.Credential;
import java.util.List;

/**
 *
 * @author weldu
 */
public interface CredentialDAO {
    
    public void createCredential(Credential credential);
    
    public void updateCredential(Credential credential);
    
    public Credential getCredential(int credentialid);
    
    public List<Credential> getAllCredentials();
    
    public Credential getCredentialByUserName(String username);
    
}