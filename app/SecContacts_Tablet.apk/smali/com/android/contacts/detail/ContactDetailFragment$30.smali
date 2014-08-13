.class Lcom/android/contacts/detail/ContactDetailFragment$30;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->videoCallingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$dialog_checkbox:Landroid/widget/CheckBox;

.field final synthetic val$video_calling_switch:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 3145
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->val$dialog_checkbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->val$video_calling_switch:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 3149
    const-string v1, "ContactDetailFragment"

    const-string v2, "videoalertDialog onClick"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    const-string v0, "NOT checked"

    .line 3152
    .local v0, "checkBoxResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->val$dialog_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3153
    const-string v0, "checked"

    .line 3155
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->val$video_calling_switch:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "skipMessage1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3157
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$30;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleState(I)V

    .line 3159
    return-void
.end method
