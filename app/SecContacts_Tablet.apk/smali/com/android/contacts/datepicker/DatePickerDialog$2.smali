.class Lcom/android/contacts/datepicker/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/android/contacts/datepicker/DatePickerDialog$OnDateSetListener;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$2;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$2;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$2;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    # getter for: Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->access$000(Lcom/android/contacts/datepicker/DatePickerDialog;)Lcom/android/contacts/datepicker/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePickerDialog$2;->this$0:Lcom/android/contacts/datepicker/DatePickerDialog;

    # getter for: Lcom/android/contacts/datepicker/DatePickerDialog;->mDatePicker:Lcom/android/contacts/datepicker/DatePicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePickerDialog;->access$000(Lcom/android/contacts/datepicker/DatePickerDialog;)Lcom/android/contacts/datepicker/DatePicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 210
    return-void
.end method
