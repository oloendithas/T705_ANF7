.class public Lcom/diotek/ime/framework/connect/ContactsConnectModule;
.super Lcom/diotek/ime/framework/connect/AbstractConnectModule;
.source "ContactsConnectModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/diotek/ime/framework/connect/ContactsConnectModule;->initialize()V

    .line 21
    return-void
.end method


# virtual methods
.method public getEmailAccounts()V
    .locals 21

    .prologue
    .line 79
    const/16 v19, 0x0

    .line 81
    .local v19, "phoneCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 82
    .local v3, "uContactsUri":Landroid/net/Uri;
    const-string v7, "display_name"

    .line 84
    .local v7, "strProjection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 85
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    const-string v17, ""

    .line 88
    .local v17, "name":Ljava/lang/String;
    const-string v15, ""

    .line 90
    .local v15, "email":Ljava/lang/String;
    const-string v2, "display_name"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 92
    .local v18, "nameColumn":I
    const/16 v20, 0x0

    .line 94
    .local v20, "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 95
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v17

    .line 97
    const/16 v16, 0x0

    .line 99
    .local v16, "emailCursor":Landroid/database/Cursor;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "data1"

    aput-object v4, v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DISPLAY_NAME=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 104
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    goto :goto_1

    .line 111
    :cond_0
    if-eqz v16, :cond_1

    .line 112
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 113
    const/16 v16, 0x0

    .line 117
    :cond_1
    :goto_2
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    new-instance v20, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v15, v4, v5}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .line 119
    .restart local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    if-eqz v20, :cond_2

    .line 120
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x65

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 124
    :cond_2
    const-string v17, ""

    .line 125
    const-string v15, ""

    .line 126
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 129
    .end local v3    # "uContactsUri":Landroid/net/Uri;
    .end local v7    # "strProjection":Ljava/lang/String;
    .end local v15    # "email":Ljava/lang/String;
    .end local v16    # "emailCursor":Landroid/database/Cursor;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "nameColumn":I
    .end local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :catch_0
    move-exception v14

    .line 130
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "[GetPhonenumberAdapter] getContactData"

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    if-eqz v19, :cond_3

    .line 134
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 135
    const/16 v19, 0x0

    .line 138
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-void

    .line 108
    .restart local v3    # "uContactsUri":Landroid/net/Uri;
    .restart local v7    # "strProjection":Ljava/lang/String;
    .restart local v15    # "email":Ljava/lang/String;
    .restart local v16    # "emailCursor":Landroid/database/Cursor;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "nameColumn":I
    .restart local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :catch_1
    move-exception v2

    .line 111
    if-eqz v16, :cond_1

    .line 112
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 113
    const/16 v16, 0x0

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_4

    .line 112
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 113
    const/16 v16, 0x0

    :cond_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .end local v3    # "uContactsUri":Landroid/net/Uri;
    .end local v7    # "strProjection":Ljava/lang/String;
    .end local v15    # "email":Ljava/lang/String;
    .end local v16    # "emailCursor":Landroid/database/Cursor;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "nameColumn":I
    .end local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :catchall_1
    move-exception v2

    if-eqz v19, :cond_5

    .line 134
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 135
    const/16 v19, 0x0

    :cond_5
    throw v2

    .line 133
    .restart local v3    # "uContactsUri":Landroid/net/Uri;
    .restart local v7    # "strProjection":Ljava/lang/String;
    .restart local v15    # "email":Ljava/lang/String;
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v18    # "nameColumn":I
    .restart local v20    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    :cond_6
    if-eqz v19, :cond_3

    .line 134
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 135
    const/16 v19, 0x0

    goto :goto_3
.end method

.method public getPhoneName()V
    .locals 14

    .prologue
    const/16 v13, 0x65

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 47
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 49
    .local v8, "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 51
    :cond_0
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 54
    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v9, v7, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v9, "stk":Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "token":Ljava/lang/String;
    new-instance v8, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v8    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v0, v10, v12, v11}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .line 60
    .restart local v8    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    if-eqz v8, :cond_1

    .line 61
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 66
    .end local v9    # "stk":Ljava/util/StringTokenizer;
    .end local v10    # "token":Ljava/lang/String;
    :cond_2
    new-instance v8, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;

    .end local v8    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v0, v7, v12, v11}, Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;-><init>(Lcom/diotek/ime/framework/common/InputManagerImpl;Ljava/lang/String;IZ)V

    .line 67
    .restart local v8    # "sc":Lcom/diotek/ime/framework/common/InputManagerImpl$Xt9LearningContents;
    if-eqz v8, :cond_3

    .line 68
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getXt9LearningContentsHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v13, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    .end local v7    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0}, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->initialize()V

    .line 26
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/connect/ContactsConnectModule$1;-><init>(Lcom/diotek/ime/framework/connect/ContactsConnectModule;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method
