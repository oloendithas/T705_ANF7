.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;
.super Lcom/android/contacts/list/ProfileAndContactsLoader;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-direct {p0, p2}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 6

    .prologue
    .line 230
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    .line 231
    .local v1, "isSimReady":Z
    const/4 v0, 0x0

    .line 232
    .local v0, "isSim2Ready":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_3

    .line 239
    :goto_0
    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "selectionString":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_4

    .line 262
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->setSelection(Ljava/lang/String;)V

    .line 263
    const-string v3, "InteractionPickerRCSeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimReady selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v2    # "selectionString":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 268
    .restart local v2    # "selectionString":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 275
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->setSelection(Ljava/lang/String;)V

    .line 278
    const-string v3, "InteractionPickerRCSeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSim2Ready selectionString changed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v2    # "selectionString":Ljava/lang/String;
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/ProfileAndContactsLoader;->onContentChanged()V

    .line 307
    return-void

    .line 234
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v1

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 253
    .restart local v2    # "selectionString":Ljava/lang/String;
    :cond_4
    const-string v3, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "has_phone_number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 257
    const-string v3, " AND (link_type1 != \'vnd.sec.contact.sim2\')"

    const-string v4, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
