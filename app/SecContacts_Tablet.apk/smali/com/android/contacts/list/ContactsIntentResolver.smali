.class public Lcom/android/contacts/list/ContactsIntentResolver;
.super Ljava/lang/Object;
.source "ContactsIntentResolver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactsIntentResolver"


# instance fields
.field private final mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    .line 61
    return-void
.end method


# virtual methods
.method public resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    new-instance v12, Lcom/android/contacts/list/ContactsRequest;

    invoke-direct {v12}, Lcom/android/contacts/list/ContactsRequest;-><init>()V

    .line 66
    .local v12, "request":Lcom/android/contacts/list/ContactsRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "action":Ljava/lang/String;
    const-string v16, "ContactsIntentResolver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Called with action: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v16, "com.android.contacts.action.LIST_DEFAULT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 71
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 562
    :cond_0
    :goto_0
    const-string v16, "com.android.contacts.extra.TITLE_EXTRA"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "title":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 564
    invoke-virtual {v12, v14}, Lcom/android/contacts/list/ContactsRequest;->setActivityTitle(Ljava/lang/CharSequence;)V

    .line 566
    :cond_1
    return-object v12

    .line 72
    .end local v14    # "title":Ljava/lang/String;
    :cond_2
    const-string v16, "com.android.contacts.action.LIST_ALL_CONTACTS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 73
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v16, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 75
    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v16, "com.android.contacts.action.LIST_STARRED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 77
    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 78
    :cond_5
    const-string v16, "com.android.contacts.action.LIST_FREQUENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 79
    const/16 v16, 0x28

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 80
    :cond_6
    const-string v16, "com.android.contacts.action.LIST_STREQUENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 81
    const/16 v16, 0x32

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_0

    .line 82
    :cond_7
    const-string v16, "com.android.contacts.action.LIST_GROUP"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 83
    const/16 v16, 0x14

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 87
    const-string v16, "com.android.contacts.extra.GROUP"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "groupName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 89
    invoke-virtual {v12, v9}, Lcom/android/contacts/list/ContactsRequest;->setGroupName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_8
    const-string v16, "ContactsIntentResolver"

    const-string v17, "Intent missing a required extra: com.android.contacts.extra.GROUP"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setValid(Z)V

    goto/16 :goto_0

    .line 94
    .end local v9    # "groupName":Ljava/lang/String;
    :cond_9
    const-string v16, "android.intent.action.PICK"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .local v13, "resolvedType":Ljava/lang/String;
    const-string v16, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 97
    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 100
    const-string v16, "show-create"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 102
    const/16 v16, 0x46

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 103
    const/16 v16, 0x1a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 104
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    .line 132
    :cond_a
    :goto_1
    const-string v16, "phone-need-call"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 134
    const/16 v16, 0x19

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 106
    :cond_b
    const-string v16, "vnd.android.cursor.dir/person"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 107
    const/16 v16, 0x3c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 108
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    .line 109
    :cond_c
    const-string v16, "vnd.android.cursor.dir/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 110
    const/16 v16, 0x5a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_1

    .line 111
    :cond_d
    const-string v16, "vnd.android.cursor.dir/phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 112
    const/16 v16, 0x5a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 113
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto :goto_1

    .line 114
    :cond_e
    const-string v16, "vnd.android.cursor.dir/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 115
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 117
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto :goto_1

    .line 118
    :cond_f
    const-string v16, "vnd.android.cursor.dir/postal-address"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 119
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 120
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_1

    .line 121
    :cond_10
    const-string v16, "vnd.android.cursor.dir/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 122
    const/16 v16, 0x69

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_1

    .line 123
    :cond_11
    const-string v16, "text/x-vcard"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 125
    const/16 v16, 0xfa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 126
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 127
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 128
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    .line 129
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setSelectionMode(Z)V

    goto/16 :goto_1

    .line 137
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_12
    const-string v16, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "component":Ljava/lang/String;
    const-string v16, "alias.DialShortcut"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 140
    const/16 v16, 0x78

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 141
    :cond_13
    const-string v16, "alias.MessageShortcut"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 142
    const/16 v16, 0x82

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 144
    :cond_14
    const/16 v16, 0x6e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 146
    .end local v5    # "component":Ljava/lang/String;
    :cond_15
    const-string v16, "android.intent.action.GET_CONTENT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v15

    .line 148
    .local v15, "type":Ljava/lang/String;
    const-string v16, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 149
    const-string v16, "include-readonly-contact"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    .line 151
    const/16 v16, 0x1a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 156
    :goto_2
    const/16 v16, 0x46

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 158
    const-string v16, "include-profile"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    .line 160
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_0

    .line 154
    :cond_16
    const/16 v16, 0x18

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto :goto_2

    .line 163
    :cond_17
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setIncludeProfile(Z)V

    goto/16 :goto_0

    .line 164
    :cond_18
    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 165
    const/16 v16, 0x5a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 166
    :cond_19
    const-string v16, "vnd.android.cursor.item/phone"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 167
    const/16 v16, 0x5a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 168
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 169
    :cond_1a
    const-string v16, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 170
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 171
    :cond_1b
    const-string v16, "vnd.android.cursor.item/postal-address"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 172
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 173
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 174
    :cond_1c
    const-string v16, "vnd.android.cursor.item/person"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 175
    const/16 v16, 0x46

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 176
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setLegacyCompatibilityMode(Z)V

    goto/16 :goto_0

    .line 178
    .end local v15    # "type":Ljava/lang/String;
    :cond_1d
    const-string v16, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 180
    .local v7, "extra":Landroid/os/Bundle;
    const-string v16, "hidecreatelabel"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1e

    .line 181
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    .line 185
    :goto_3
    const/16 v16, 0x50

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 183
    :cond_1e
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setHideCreateLabel(Z)V

    goto :goto_3

    .line 186
    .end local v7    # "extra":Landroid/os/Bundle;
    :cond_1f
    const-string v16, "android.intent.action.SEARCH"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    .line 187
    const-string v16, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    .local v11, "query":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_20

    .line 191
    const-string v16, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 193
    :cond_20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_21

    .line 194
    const-string v16, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 196
    :cond_21
    invoke-virtual {v12, v11}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 197
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 198
    .end local v11    # "query":Ljava/lang/String;
    :cond_22
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactsIntentResolver;->mContext:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 200
    .restart local v13    # "resolvedType":Ljava/lang/String;
    const-string v16, "vnd.android.cursor.dir/contact"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_23

    const-string v16, "vnd.android.cursor.dir/person"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_24

    .line 202
    :cond_23
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 204
    :cond_24
    const/16 v16, 0x8c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 206
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 209
    .end local v13    # "resolvedType":Ljava/lang/String;
    :cond_25
    const-string v16, "com.android.contacts.action.FILTER_CONTACTS"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    .line 213
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 215
    .local v8, "extras":Landroid/os/Bundle;
    if-eqz v8, :cond_26

    .line 216
    const-string v16, "com.android.contacts.extra.FILTER_TEXT"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 218
    const-string v16, "originalRequest"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/list/ContactsRequest;

    .line 220
    .local v10, "originalRequest":Lcom/android/contacts/list/ContactsRequest;
    if-eqz v10, :cond_26

    .line 221
    invoke-virtual {v12, v10}, Lcom/android/contacts/list/ContactsRequest;->copyFrom(Lcom/android/contacts/list/ContactsRequest;)V

    .line 225
    .end local v10    # "originalRequest":Lcom/android/contacts/list/ContactsRequest;
    :cond_26
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 230
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_27
    const-string v16, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_28

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 232
    .local v6, "data":Landroid/net/Uri;
    const/16 v16, 0x8c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 233
    invoke-virtual {v12, v6}, Lcom/android/contacts/list/ContactsRequest;->setContactUri(Landroid/net/Uri;)V

    .line 234
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 238
    .end local v6    # "data":Landroid/net/Uri;
    :cond_28
    const-string v16, "intent.action.INTERACTION_TAB"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_29

    const-string v16, "intent.action.INTERACTION_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_29

    const-string v16, "intent.action.INTERACTION_TOPMENU"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4b

    .line 242
    :cond_29
    const-string v16, "settings-phone-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2a

    .line 244
    const/16 v16, 0xbe

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 245
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 246
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 247
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 248
    :cond_2a
    const-string v16, "email-phone-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2e

    .line 250
    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 251
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 253
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 255
    const-string v16, "additional2"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "additional2":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v16

    if-eqz v16, :cond_2d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2d

    .line 257
    const-string v16, "rcs-only-multi"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 258
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 265
    :goto_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChatVisible(Z)V

    goto/16 :goto_0

    .line 259
    :cond_2b
    const-string v16, "show-chat-first"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2c

    .line 260
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChatFirstMode(Z)V

    .line 261
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_4

    .line 263
    :cond_2c
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto :goto_4

    .line 267
    :cond_2d
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 276
    .end local v4    # "additional2":Ljava/lang/String;
    :cond_2e
    const-string v16, "email-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2f

    .line 278
    const/16 v16, 0xa0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 279
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 281
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 282
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 283
    :cond_2f
    const-string v16, "phone-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_30

    .line 285
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 286
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 288
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 289
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    goto/16 :goto_0

    .line 290
    :cond_30
    const-string v16, "vcard-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_31

    .line 292
    const/16 v16, 0xf0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 293
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 294
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 295
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 296
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    .line 297
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 299
    :cond_31
    const-string v16, "vip-email"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_32

    .line 301
    const/16 v16, 0x118

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 302
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 303
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 304
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 306
    :cond_32
    const-string v16, "phone"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_38

    .line 308
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 309
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 310
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 311
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 313
    const-string v16, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_33

    const-string v16, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_35

    :cond_33
    const-string v16, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_34

    const-string v16, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_35

    :cond_34
    const-string v16, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    const-string v16, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    .line 319
    :cond_35
    const-string v16, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 323
    .restart local v11    # "query":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_36

    .line 324
    const-string v16, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 326
    :cond_36
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_37

    .line 327
    const-string v16, "email"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 329
    :cond_37
    invoke-virtual {v12, v11}, Lcom/android/contacts/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    .line 330
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setSearchMode(Z)V

    goto/16 :goto_0

    .line 332
    .end local v11    # "query":Ljava/lang/String;
    :cond_38
    const-string v16, "email-phone"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_39

    .line 334
    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 335
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 336
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 337
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 338
    const/16 v16, 0x16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 339
    :cond_39
    const-string v16, "namecard"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 341
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 342
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 343
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 344
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 345
    const/16 v16, 0x17

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 346
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 347
    :cond_3a
    const-string v16, "group-phone-email"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 349
    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 350
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 351
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 352
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 353
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 354
    :cond_3b
    const-string v16, "group-email"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 356
    const/16 v16, 0xa0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 357
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 358
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 359
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 360
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 363
    :cond_3c
    const-string v16, "pick-contact-from-tab"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 365
    const/16 v16, 0xb4

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 366
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 368
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 369
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 370
    const/16 v16, 0x11

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 371
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 374
    :cond_3d
    const-string v16, "directshare-multi"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 375
    const/16 v16, 0x123

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 376
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 378
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 379
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 380
    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 381
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 382
    :cond_3e
    const-string v16, "block-directshare"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 383
    const/16 v16, 0x123

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 384
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 385
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 386
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 387
    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 388
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 389
    :cond_3f
    const-string v16, "unblock-directshare"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_40

    .line 390
    const/16 v16, 0x123

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 391
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 392
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 393
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 394
    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 395
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 399
    :cond_40
    const-string v16, "pick-multi-commtools"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_47

    .line 400
    const-string v16, "call"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_41

    .line 401
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 402
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 404
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 405
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 406
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 407
    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 408
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 410
    :cond_41
    const-string v16, "vt"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_42

    .line 411
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 412
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 414
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 415
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 416
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 417
    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 418
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 420
    :cond_42
    const-string v16, "msg"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_44

    .line 421
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Message_DisableMMS"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_43

    .line 423
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 427
    :goto_5
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 429
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 430
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 431
    const/16 v16, 0x23

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 425
    :cond_43
    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_5

    .line 433
    :cond_44
    const-string v16, "email"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 434
    const/16 v16, 0xa0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 435
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 437
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 438
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 439
    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 441
    :cond_45
    const-string v16, "chaton"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_46

    .line 442
    const/16 v16, 0x125

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 443
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 445
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 446
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 447
    const/16 v16, 0x25

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 448
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 450
    :cond_46
    const-string v16, "chatonv"

    const-string v17, "toolitem"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 451
    const/16 v16, 0x125

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 452
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 454
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 455
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 456
    const/16 v16, 0x26

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 457
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 461
    :cond_47
    const-string v16, "pick-multi-emergency-message"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_48

    .line 462
    const/16 v16, 0x126

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 463
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 464
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 465
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 466
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 470
    :cond_48
    const-string v16, "intent.action.EXPORT_TO_INTERNEL_SDCARD"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_49

    .line 472
    const/16 v16, 0x12d

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 473
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 474
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 475
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 476
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 477
    :cond_49
    const-string v16, "intent.action.EXPORT_TO_EXTERNEL_SDCARD"

    const-string v17, "additional"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4a

    .line 479
    const/16 v16, 0x12e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 480
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 481
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 482
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 483
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 485
    :cond_4a
    const/16 v16, 0xb4

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 486
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 487
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 488
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    .line 489
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 491
    :cond_4b
    const-string v16, "intent.action.INTERACTION_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4c

    .line 492
    const/16 v16, 0x104

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 493
    :cond_4c
    const-string v16, "intent.action.EXPORT_SIM_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4d

    .line 494
    const/16 v16, 0x12c

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 495
    :cond_4d
    const-string v16, "intent.action.IMPORT_SIM_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4e

    .line 496
    const/16 v16, 0x136

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 497
    const-string v16, "account_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 498
    const-string v16, "account_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_4e
    const-string v16, "intent.action.DELETE_SIM_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4f

    .line 500
    const/16 v16, 0x15e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 501
    :cond_4f
    const-string v16, "android.intent.action.SIM_IMPORT_START"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_50

    .line 503
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 505
    const/16 v16, 0x136

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 506
    const-string v16, "vnd.sec.contact.phone"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 507
    const-string v16, "vnd.sec.contact.phone"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_50
    const-string v16, "com.sec.android.app.contacts.action.FAVORITE_ADD"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_51

    .line 510
    const/16 v16, 0x15e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 511
    :cond_51
    const-string v16, "com.sec.android.app.contacts.action.FAVORITE_DELETE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_52

    .line 512
    const/16 v16, 0x15f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 514
    :cond_52
    const-string v16, "intent.action.EXPORT_SIM2_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_53

    .line 515
    const/16 v16, 0x190

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 516
    :cond_53
    const-string v16, "intent.action.IMPORT_SIM2_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_54

    .line 517
    const/16 v16, 0x19a

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 518
    const-string v16, "account_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountName(Ljava/lang/String;)V

    .line 519
    const-string v16, "account_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setAccountType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_54
    const-string v16, "intent.action.DELETE_SIM2_CONTACT"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_55

    .line 521
    const/16 v16, 0x1c2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto/16 :goto_0

    .line 523
    :cond_55
    const-string v16, "intent.action.INTERACTION_ICE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_56

    .line 524
    const/16 v16, 0x122

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 525
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 526
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setTabMode(Z)V

    .line 527
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setChangeDisplayMode(Z)V

    goto/16 :goto_0

    .line 529
    :cond_56
    const-string v16, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 530
    const/16 v16, 0x21

    const-string v17, "toolitem"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_57

    .line 531
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 532
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 533
    const/16 v16, 0x21

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 534
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 536
    :cond_57
    const/16 v16, 0x22

    const-string v17, "toolitem"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_58

    .line 537
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 538
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 539
    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    .line 540
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setDirectorySearchEnabled(Z)V

    goto/16 :goto_0

    .line 542
    :cond_58
    const/16 v16, 0x23

    const-string v17, "toolitem"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5a

    .line 543
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Message_DisableMMS"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_59

    .line 545
    const/16 v16, 0xaa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 549
    :goto_6
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 550
    const/16 v16, 0x23

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0

    .line 547
    :cond_59
    const/16 v16, 0x96

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    goto :goto_6

    .line 552
    :cond_5a
    const/16 v16, 0x24

    const-string v17, "toolitem"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 553
    const/16 v16, 0xa0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 554
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setMutiSelectMode(Z)V

    .line 555
    const/16 v16, 0x24

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/contacts/list/ContactsRequest;->setExtraValue(I)V

    goto/16 :goto_0
.end method
