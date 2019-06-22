/**
 */

package org.jleopard.ihotel.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.jleopard.core.EnumId;
import org.jleopard.core.annotation.Column;
import org.jleopard.core.annotation.Table;

@Table
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Column(id = EnumId.UUID)
    private String id;

    @Column
    private String email;

    @Column
    private String name;

    @Column
    private String password;

    @Column
    private Byte status;

    @Column
    private Byte role;
}
