## Equation
```tex
\begin{equ}[!ht]
    \begin{equation}
        a=b+c
      \end{equation}
    \caption{Caption of the equation}
\end{equ}
```


##  Citatation 

```tex
\citep{progit}
```

## Table

```tex
 \begin{table}[]
    \caption{Title of the table}\label{tab:first}
    \centering
    \begin{tabular}{|l|l|l|l|l|}
    \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
     &  &  &  &  \\ \hline
    \end{tabular}
 \end{table}
```

## Picture

```tex
\begin{figure}[H]
	\centering
	\includegraphics[width=0.5\textwidth]{PATH}
	\caption{CAPTION NAME}
\end{figure}
```

## Items 

```tex
\begin{itemize}
	\item x1;
	\item x2;
	\item x3;
	\item x4.
\end{itemize}
```

## Code

```tex
\begin{figure}[H]
	\centering
	\begin{minted}[tabsize=2,breaklines,fontsize=\small]{cpp}
        ## CODE HERE
	\end{minted}
	\caption{Event subscribtion example}
\end{figure}

```