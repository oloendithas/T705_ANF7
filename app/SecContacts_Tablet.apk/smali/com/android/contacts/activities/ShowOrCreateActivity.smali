.class public final Lcom/android/contacts/activities/ShowOrCreateActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ShowOrCreateActivity$IntentClickListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final CONTACT_ID_INDEX:I = 0x0

.field static final CREATE_CONTACT_DIALOG:I = 0x1

.field private static final IDX_CREATE:I = 0x0

.field private static final IDX_UPDATE:I = 0x1

.field static final LOGD:Z = false

.field static final LOOKUP_KEY_INDEX:I = 0x1

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final QUERY_TOKEN:I = 0x2a

.field static final TAG:Ljava/lang/String; = "ShowOrCreateActivity"


# instance fields
.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 386
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ShowOrCreateActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/ShowOrCreateActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 373
    if-ne p2, v0, :cond_0

    .line 374
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 379
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v5, 0x1

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 109
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_4

    .line 110
    new-instance v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 116
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 119
    .local v8, "data":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 120
    .local v12, "scheme":Ljava/lang/String;
    const/4 v13, 0x0

    .line 121
    .local v13, "ssp":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 122
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 127
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 128
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 129
    .local v10, "originalExtras":Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 134
    :cond_1
    const-string v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 136
    iput-object v13, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 140
    :cond_2
    const-string v0, "com.android.contacts.action.FORCE_CREATE"

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    .line 143
    iget-boolean v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    if-nez v0, :cond_6

    .line 144
    const/4 v11, 0x0

    .line 145
    .local v11, "qcIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.jcontacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 146
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "qcIntent":Landroid/content/Intent;
    const-string v0, "com.android.jcontacts.action.QUICK_CONTACT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v11    # "qcIntent":Landroid/content/Intent;
    :goto_1
    const-string v0, "mode"

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v0, "is_invalid_uri"

    invoke-virtual {v11, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    if-eqz v8, :cond_3

    .line 153
    const-string v0, "scheme"

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v0, "ssp"

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :cond_3
    const/high16 v0, 0x4000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 158
    const-string v0, "vnd.android.cursor.item/contact"

    invoke-virtual {v11, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 196
    .end local v11    # "qcIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 112
    .end local v8    # "data":Landroid/net/Uri;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "originalExtras":Landroid/os/Bundle;
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v13    # "ssp":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    goto/16 :goto_0

    .line 148
    .restart local v8    # "data":Landroid/net/Uri;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "originalExtras":Landroid/os/Bundle;
    .restart local v11    # "qcIntent":Landroid/content/Intent;
    .restart local v12    # "scheme":Ljava/lang/String;
    .restart local v13    # "ssp":Ljava/lang/String;
    :cond_5
    new-instance v11, Landroid/content/Intent;

    .end local v11    # "qcIntent":Landroid/content/Intent;
    const-string v0, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v11    # "qcIntent":Landroid/content/Intent;
    goto :goto_1

    .line 165
    .end local v11    # "qcIntent":Landroid/content/Intent;
    :cond_6
    const-string v0, "mailto"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "email"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 170
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_7
    const-string v0, "tel"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 173
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 177
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 179
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_8
    const-string v0, "name"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "name"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 184
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 186
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v0, "sip"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "sip"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "query"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 190
    .restart local v3    # "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/activities/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 193
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v0, "ShowOrCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0401e3

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 291
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 298
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    new-instance v4, Lcom/android/contacts/activities/ShowOrCreateActivity$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/activities/ShowOrCreateActivity$2;-><init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V

    invoke-virtual {v2, v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/activities/ShowOrCreateActivity$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/ShowOrCreateActivity$1;-><init>(Lcom/android/contacts/activities/ShowOrCreateActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e00b7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    .line 210
    if-nez p3, :cond_1

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v3, 0x0

    .line 218
    .local v3, "count":I
    const-wide/16 v0, -0x1

    .line 219
    .local v0, "contactId":J
    const/4 v6, 0x0

    .line 221
    .local v6, "lookupKey":Ljava/lang/String;
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 222
    if-ne v3, v10, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 224
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 225
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 228
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 231
    if-ne v3, v10, :cond_4

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_4

    .line 233
    invoke-static {v0, v1, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 234
    .local v2, "contactUri":Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    .local v7, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.jcontacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 237
    const-string v8, "com.android.jcontacts"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_3
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 228
    .end local v2    # "contactUri":Landroid/net/Uri;
    .end local v7    # "viewIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v8

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v8

    .line 242
    :cond_4
    if-le v3, v10, :cond_6

    .line 244
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEARCH"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v5, "listIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    iget-object v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 248
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.jcontacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 249
    const-string v8, "com.android.jcontacts"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_5
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 256
    .end local v5    # "listIntent":Landroid/content/Intent;
    :cond_6
    iget-boolean v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz v8, :cond_8

    .line 258
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .local v4, "createIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    const-string v8, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.jcontacts"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 263
    const-string v8, "com.android.jcontacts"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :cond_7
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 271
    .end local v4    # "createIntent":Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    .line 272
    invoke-virtual {p0, v10}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 201
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/contacts/activities/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 206
    :cond_0
    return-void
.end method
