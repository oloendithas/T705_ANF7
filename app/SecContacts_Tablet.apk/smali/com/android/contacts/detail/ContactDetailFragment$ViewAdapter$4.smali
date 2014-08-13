.class Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field final synthetic val$dialog_checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 5074
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->val$dialog_checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 5077
    const-string v1, "ContactDetailFragment"

    const-string v2, "alertDialog onClick"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5079
    const-string v0, "NOT checked"

    .line 5081
    .local v0, "checkBoxResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->val$dialog_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5082
    const-string v0, "checked"

    .line 5084
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$4;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->video_switch_pref:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->access$3900(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "skipMessage1"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5087
    return-void
.end method
