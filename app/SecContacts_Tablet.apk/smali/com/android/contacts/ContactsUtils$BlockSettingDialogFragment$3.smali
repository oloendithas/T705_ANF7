.class Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->BlockNumberSettingDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$3;->this$0:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 694
    sget-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean p3, v0, p2

    .line 695
    return-void
.end method
