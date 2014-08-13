.class public Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/OnMultiDataPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MultiDataPickerActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 2067
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataDeleted()V
    .locals 0

    .prologue
    .line 2182
    return-void
.end method

.method public onAllDataSelected(IZ)V
    .locals 3
    .param p1, "selectedCount"    # I
    .param p2, "isAll"    # Z

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2222
    const-string v0, "wt79.kim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAllDataSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCountInSearchMode:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$702(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I

    .line 2224
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsAllSelected:Z
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$802(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 2226
    :cond_0
    return-void
.end method

.method public onCancelAction()V
    .locals 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2139
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 2140
    return-void
.end method

.method public onInteractionPickerAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 2162
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    .line 2165
    :goto_0
    return-void

    .line 2152
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 2155
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 2158
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/net/Uri;)V

    goto :goto_0

    .line 2148
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x96 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xaa -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method

.method public onOneDataInputed()V
    .locals 0

    .prologue
    .line 2187
    return-void
.end method

.method public onPickContactAction(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2084
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2098
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 2100
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    .line 2101
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    .line 2135
    :goto_0
    return-void

    .line 2104
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendContactsIntent(Ljava/util/HashMap;)V

    goto :goto_0

    .line 2108
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0x123

    if-ne v1, v2, :cond_3

    .line 2109
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnSoureIdPickerResult(Ljava/util/HashMap;)V
    invoke-static {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1700(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2112
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0x12d

    if-ne v1, v2, :cond_4

    .line 2113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2115
    .local v0, "exportIntent":Landroid/content/Intent;
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2117
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2118
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2119
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 2120
    .end local v0    # "exportIntent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_5

    .line 2121
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    const-class v2, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2123
    .restart local v0    # "exportIntent":Landroid/content/Intent;
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->getVcardName(Ljava/util/HashMap;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1800(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2124
    const-string v1, "path"

    sget-object v2, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2125
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2126
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2127
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    goto :goto_0

    .line 2129
    .end local v0    # "exportIntent":Landroid/content/Intent;
    :cond_5
    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendType:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1900()I

    move-result v1

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->SEND_INDIVIDUAL_NAMECARDS:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2000()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 2130
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardByMultiUriIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2132
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendVcardIntent(Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onPickDataAction(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2070
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mExtraValue:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionCode:I

    const/16 v1, 0x125

    if-ne v0, v1, :cond_1

    .line 2075
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->sendActionIntent(Ljava/util/HashMap;)V

    .line 2079
    :goto_0
    return-void

    .line 2077
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onPickGroupDataAction(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2193
    .local p1, "mSelectedContactHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;)V

    .line 2198
    return-void
.end method

.method public onPickSpeedDialAction(Landroid/net/Uri;J)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "dataid"    # J

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickPhoneResult(Landroid/net/Uri;J)V

    .line 2203
    return-void
.end method

.method public onRecentListAction(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->returnPickerResult(Landroid/content/Intent;)V

    .line 2144
    return-void
.end method

.method public onRevertAction()V
    .locals 0

    .prologue
    .line 2177
    return-void
.end method

.method public onSelected(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 2207
    const-string v0, "InteractionTabActivity"

    const-string v1, "onSelected"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$602(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)I

    .line 2209
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2102(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 2211
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsSelectionMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectedCount:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)I

    move-result v2

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarTitle(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$2400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$MultiDataPickerActionListener;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2217
    return-void

    .line 2209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSelectedAction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2171
    .local p1, "rgData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method
