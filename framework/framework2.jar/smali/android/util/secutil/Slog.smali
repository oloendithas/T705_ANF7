.class public final Landroid/util/secutil/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x3

    .line 58
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_a

    .line 59
    invoke-static {v1, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x3

    .line 72
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_25

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v2, p0, v0}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 76
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_b

    .line 161
    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_26

    .line 175
    const/4 v0, 0x3

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 178
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_b

    .line 88
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 90
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_26

    .line 102
    const/4 v0, 0x3

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 105
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_a

    .line 191
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 193
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_9

    .line 66
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 68
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    if-eqz v0, :cond_9

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 83
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_9

    .line 168
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 170
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 182
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    if-eqz v0, :cond_9

    .line 183
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 185
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_9

    .line 95
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 97
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    if-eqz v0, :cond_9

    .line 110
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 112
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secPrintln(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_9

    .line 198
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_9

    .line 37
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    if-eqz v0, :cond_9

    .line 52
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 54
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 124
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 126
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 138
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 139
    invoke-static {p0, p1, p2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 141
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 153
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    if-eqz v0, :cond_9

    .line 154
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    .line 156
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_b

    .line 30
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 32
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_26

    .line 44
    const/4 v0, 0x3

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 47
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_b

    .line 117
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {v0, v1, p0, p1}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 119
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_26

    .line 131
    const/4 v0, 0x3

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    if-eqz v0, :cond_f

    .line 147
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-static {p1}, Landroid/util/secutil/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 149
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
