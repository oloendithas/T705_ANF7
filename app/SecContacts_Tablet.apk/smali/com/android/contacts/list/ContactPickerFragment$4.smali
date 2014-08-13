.class Lcom/android/contacts/list/ContactPickerFragment$4;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactPickerFragment;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment$4;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$4;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactPickerFragment;->createNewContact()V

    .line 655
    return-void
.end method
