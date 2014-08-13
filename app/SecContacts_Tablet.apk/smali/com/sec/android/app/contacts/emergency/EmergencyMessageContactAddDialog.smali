.class public final Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;
.super Landroid/app/DialogFragment;
.source "EmergencyMessageContactAddDialog.java"


# static fields
.field private static final KEY_CONTACTS_COUNT:Ljava/lang/String; = "ContactsCount"

.field private static final KEY_MAX_CONTACTS_NUMBER:Ljava/lang/String; = "MaxContactsNumber"

.field public static final TAG:Ljava/lang/String; = "EmergencyMessageContactAddDialog"


# instance fields
.field private mContactsCount:I

.field private mMaxContactsNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;II)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "maxContactsNumber"    # I
    .param p2, "contactsCount"    # I

    .prologue
    .line 56
    new-instance v0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;-><init>()V

    .line 57
    .local v0, "instance":Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->setMaxContactsNumber(I)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->setContactsCount(I)V

    .line 60
    const-string v1, "EmergencyMessageContactAddDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 61
    const-string v1, "EmergencyMessageContactAddDialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 85
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_0

    .line 86
    const-string v4, "MaxContactsNumber"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    .line 87
    const-string v4, "ContactsCount"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    .line 91
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$1;-><init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;Landroid/view/LayoutInflater;)V

    .line 130
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    new-instance v2, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog$2;-><init>(Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;)V

    .line 156
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0423

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 160
    .local v1, "addContactDialog":Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "MaxContactsNumber"

    iget v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v0, "ContactsCount"

    iget v1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public setContactsCount(I)V
    .locals 0
    .param p1, "contactsCount"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mContactsCount:I

    .line 71
    return-void
.end method

.method public setMaxContactsNumber(I)V
    .locals 0
    .param p1, "maxContactsNumber"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sec/android/app/contacts/emergency/EmergencyMessageContactAddDialog;->mMaxContactsNumber:I

    .line 67
    return-void
.end method
