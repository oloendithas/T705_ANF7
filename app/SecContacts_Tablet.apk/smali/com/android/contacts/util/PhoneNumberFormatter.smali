.class public final Lcom/android/contacts/util/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumberFormatter"

.field private static prevTextView:Landroid/widget/TextView;

.field public static prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    .line 29
    sput-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevWatcher:Lcom/android/contacts/util/AltPhoneNumberFormattingTextWatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/widget/TextView;

    .prologue
    .line 27
    sput-object p0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 78
    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/contacts/util/PhoneNumberFormatter;->prevTextView:Landroid/widget/TextView;

    instance-of v0, v0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/contacts/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
