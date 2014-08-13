.class Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .param p2, "x1"    # Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
