.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 306
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 307
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 312
    const/4 v6, 0x0

    .line 313
    .local v6, "lookupUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 314
    .local v2, "createUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 315
    .local v7, "trigger":Z
    if-eqz p2, :cond_2f

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object v3, p2

    .line 317
    .local v3, "extras":Landroid/os/Bundle;
    :goto_8
    packed-switch p1, :pswitch_data_ba

    .line 352
    :cond_b
    :goto_b
    if-eqz p3, :cond_10

    .line 353
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_10
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v8, v6}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 358
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v8}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 360
    if-eqz v7, :cond_9a

    if-eqz v6, :cond_9a

    .line 362
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v10, 0x3

    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v11, v11, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v8, v9, v6, v10, v11}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 373
    :cond_2e
    :goto_2e
    return-void

    .line 315
    .end local v3    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2f
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_8

    .line 319
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v3    # "extras":Landroid/os/Bundle;
    :pswitch_35
    const/4 v7, 0x1

    .line 320
    if-eqz v3, :cond_43

    if-eqz v3, :cond_45

    :try_start_3a
    const-string/jumbo v8, "uri_content"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_45

    .line 321
    :cond_43
    const/4 v2, 0x0

    .line 322
    goto :goto_b

    .line 324
    :cond_45
    const-string/jumbo v8, "tel"

    const-string/jumbo v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 328
    :pswitch_54
    if-eqz p3, :cond_b

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 329
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 330
    .local v0, "contactId":J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 332
    goto :goto_b

    .line 337
    .end local v0    # "contactId":J
    .end local v5    # "lookupKey":Ljava/lang/String;
    :pswitch_6b
    const/4 v7, 0x1

    .line 338
    const-string/jumbo v8, "mailto"

    const-string/jumbo v9, "uri_content"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 343
    :pswitch_7b
    if-eqz p3, :cond_b

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 344
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 345
    .restart local v0    # "contactId":J
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .restart local v5    # "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_90
    .catchall {:try_start_3a .. :try_end_90} :catchall_93

    move-result-object v6

    goto/16 :goto_b

    .line 352
    .end local v0    # "contactId":J
    .end local v5    # "lookupKey":Ljava/lang/String;
    :catchall_93
    move-exception v8

    if-eqz p3, :cond_99

    .line 353
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_99
    throw v8

    .line 364
    :cond_9a
    if-eqz v2, :cond_2e

    .line 366
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 367
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_ae

    .line 368
    const-string/jumbo v8, "uri_content"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 371
    :cond_ae
    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2e

    .line 317
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_54
        :pswitch_6b
        :pswitch_35
    .end packed-switch
.end method
